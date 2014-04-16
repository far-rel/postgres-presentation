CREATE EXTENSION hstore;

CREATE TABLE hstore_table (
  id SERIAL,
  hstore_field hstore
);

-- INSERTS
INSERT INTO hstore_table(hstore_field) 
VALUES ('a=>b, c=>d');

-- UPDATES
UPDATE hstore_table 
SET hstore_field = 'a=>c';

UPDATE hstore_table SET
hstore_field = hstore_field || 'f=>g';

UPDATE hstore_table SET
hstore_field = delete(hstore_field, 'a');

--SELECTIONS
SELECT hstore_field FROM hstore_table;

SELECT akeys(hstore_field) FROM hstore_table;

SELECT avals(hstore_field) FROM hstore_table;