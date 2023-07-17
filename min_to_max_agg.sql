--below function will take the value, get the min and max and store them in state as arrays
CREATE OR REPLACE FUNCTION min_to_max_agg(cur_state anyarray, val anyelement)
  RETURNS anyarray AS
$$
BEGIN
  IF val IS NULL THEN
    RETURN cur_state;
  END IF;
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
