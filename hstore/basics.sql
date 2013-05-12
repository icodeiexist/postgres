--source http://michael.otacoo.com/postgresql-2/postgres-feature-highlight-hstore

CREATE TABLE products (id serial, characs hstore);
INSERT INTO products (characs) VALUES ( 'author=>Dave, date=>"Dec 2012", price=>"500",currency=>"dolar"');
INSERT INTO products (characs) VALUES (hstore(array['author','date','stock'],array['Mike','Nov 2012','200']));
INSERT INTO products (characs) VALUES (hstore('author','Kim'));
SELECT * FROM products;

--updating records
UPDATE products SET characs = characs || 'author=>Sarah'::hstore WHERE id = 1;
select * from products where id = 1;

--what if the key didn't exist?

UPDATE products SET characs = characs || 'coauthor=>iCodeiExist'::hstore WHERE id = 1;
select * from products where id = 1;
-- the key, value pair is added

-- deleting single elements 

UPDATE products SET characs = delete(characs,'price') WHERE id = 1;

-- querying attribute based

SELECT id FROM products WHERE (characs->'stock')::int <= 300;

