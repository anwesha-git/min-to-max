# min_to_max_agg Aggregate Function

The `min_to_max_agg` aggregate function is a PostgreSQL extension that calculates the minimum and maximum values of an integer column and returns them as a formatted string.
For example:
``SELECT min_to_max(val) FROM (VALUES(5),(3),(6),(7),(9),(10),(7)) t(val);``

min_to_max
-----------
3 -> 10
