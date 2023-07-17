# min_to_max_agg Aggregate Function

The min_to_max_agg aggregate function is a PostgreSQL extension designed to determine the minimum and maximum values of a column in a flexible manner. It operates on various data types such as integers, characters, floats, and more. This function returns the results as a formatted string, making it convenient to extract and display the range of values for a given column.

For example:

``SELECT min_to_max(val) FROM (VALUES(5),(3),(6),(7),(9),(10),(7)) t(val);``

min_to_max
-----------
3 -> 10

## Pre-requisites
 Ensure you have PostgreSQL installed.

## Installation

1. Download the source code.
2. Copy the extension files <min_to_max_agg.control> and <min_to_max_agg--1.0.sql> to the respective extension folder.
   something like `../share/extension` inside the Postgres downloads.
3. Connect to the Postgres database 
   `psql -h <host> -p <port> -d <database> -U <username>`
4. Create the extension
   `CREATE EXTENSION min_to_max_agg;`

## Usage
1. Once the extension is installed, you can use the min_to_max aggregate function in your SQL queries.
   ``SELECT min_to_max(val) FROM (VALUES(5),(3),(6),(7),(9),(10),(7)) t(val);``

## Testing
Please save the file <min-to-max-test.sql> in your local. You can execute the file and do unit testing
``\i <file_location>``
      OR
``psql -h host -U username -d DataBase -a -f file_location``

