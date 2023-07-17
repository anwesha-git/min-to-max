--the below function will convert the format from array to text 
CREATE OR REPLACE FUNCTION min_to_max_convert(cur_state anyarray)
  RETURNS text AS
$$
BEGIN
  RETURN cur_state[1]::text || '->' || cur_state[2]::text;
END;
$$
LANGUAGE plpgsql;
