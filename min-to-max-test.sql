
--Test-case-1
SELECT min_to_max(val)
FROM (VALUES(5),(3),(6),(7),(9),(10),(7)) t(val);

--Test-case-2 (with negative value)
SELECT min_to_max(val)
FROM (VALUES(5),(3),(1),(0),(-1),(100),(9),(10),(7)) t(val);

--Test-case-3 (with single value)
SELECT min_to_max(val)
FROM (VALUES(2)) t(val);

--Test-case-4 (with char data type)
SELECT min_to_max(val)
FROM (VALUES('a'),('b'),('c')) t(val);

--Test-case-5 (with float data type)
SELECT min_to_max(val)
FROM (VALUES(5.1),(4.5),(0),(3.9),(3.8)) t(val);
