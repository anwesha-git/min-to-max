## min_to_max Aggregate Function

The `min_to_max` aggregate function is a PostgreSQL extension that calculates the minimum and maximum values of a column and returns them as a formatted string. It operates on various data types such as integers, characters, floats, and more.

For example:

``SELECT min_to_max(val) FROM (VALUES(5),(3),(6),(7),(9),(10),(7)) t(val);``

min_to_max
-----------
3 -> 10

### Pre-requisites
 Ensure you have PostgreSQL installed.

### Installation

1. Copy the files ```min_to_max_agg.control``` and ```min_to_max_agg--1.0.sql``` to the postgres extension folder.
   The folder structure looks something like `../share/extension` located inside the Postgres installed path.
2. Connect to the Postgres database 
   `psql -h <host> -p <port> -d <database> -U <username>`
3. Create the extension
   `CREATE EXTENSION min_to_max_agg;`

### Usage
1. Once the extension is installed, you can use the min_to_max aggregate function in your SQL queries.
   
   ``SELECT min_to_max(val) FROM (VALUES(5),(3),(6),(7),(9),(10),(7)) t(val);``

### Testing
Please save the file <min-to-max-test.sql> in your local. You can execute the file and do unit testing

``\i <file_location>``
      OR
``psql -h host -U username -d DataBase -a -f file_location``

