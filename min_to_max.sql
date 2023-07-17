--Aggregate function
CREATE AGGREGATE min_to_max(anyelement) 
(
  SFUNC = min_to_max_agg,
  STYPE = anyarray,
  FINALFUNC = min_to_max_convert
);