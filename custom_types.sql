CREATE TYPE order_status AS ENUM (
  'in_progress', 
  'paid',
  'in_delivery',
  'delivered'
);

CREATE TYPE person AS (
  first_name VARCHAR,
  last_name VARCHAR,
  age INTEGER
);

CREATE TABLE orders (
  id SERIAL,
  p person,
  status order_status
);

INSERT INTO orders(p, status) VALUES (('John', 'Doe', 21), 'delivered');

UPDATE orders SET p.first_name = 'Paul', status = 'in_delivery';

SELECT (orders.p).first_name FROM orders;