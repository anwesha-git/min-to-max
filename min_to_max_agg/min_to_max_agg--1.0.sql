-- Creating the state transition function
CREATE OR REPLACE FUNCTION min_to_max_agg(cur_state anyarray, val anyelement)
  RETURNS anyarray AS
$$
BEGIN
  IF cur_state IS NULL THEN
    RETURN array[val, val];
  ELSE
    IF val < cur_state[1] THEN
      cur_state[1] := val;
    END IF;
    IF val > cur_state[2] THEN
      cur_state[2] := val;
    END IF;
    RETURN cur_state;
  END IF;
END;
$$
LANGUAGE plpgsql;

-- Creating the final function
CREATE OR REPLACE FUNCTION min_to_max_convert(cur_state anyarray)
  RETURNS text AS
$$
BEGIN
  RETURN cur_state[1]::text || '->' || cur_state[2]::text;
END;
$$
LANGUAGE plpgsql;


-- Creating the aggregate
CREATE AGGREGATE min_to_max(anyelement) 
(
  SFUNC = min_to_max_agg,
  STYPE = anyarray,
  FINALFUNC = min_to_max_convert
);


-- Granting necessary privileges to the user/role
GRANT EXECUTE ON FUNCTION min_to_max(anyelement) TO public;