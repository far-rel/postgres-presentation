CREATE TABLE my_table (
  id            SERIAL,
  int_array     integer[],
  string_array 	varchar[],
  multi_dim     integer[][]
)

-- INSERTS
INSERT INTO my_table(int_array) 
VALUES ('{1,2,3,4,5}');

INSERT INTO my_table(int_array) 
VALUES (ARRAY[1,2,3,4,5]);

--UPDATES
UPDATE my_table SET int_array[1] = 10;

UPDATE my_table 
SET int_array[1:2] = '{11,10}';

UPDATE my_table SET int_array[0] = 10;

UPDATE my_table SET int_array[-1] = 11;

UPDATE my_table SET int_array = int_array || 10;

UPDATE my_table SET int_array = 10 || int_array;

--SELECTIONS
SELECT int_array[1] FROM my_table;

SELECT int_array[2:3] FROM my_table;

SELECT ARRAY[1,2,3] @> ARRAY[1,2];

SELECT ARRAY[1,2] <@ ARRAY[1,2,3];

SELECT ARRAY[1,2] && ARRAY[2,3];

SELECT unnest(int_array) FROM my_table;