-- CREATE USER dojango;
-- CREATE DATABASE dojango;
-- GRANT ALL PRIVILEGES ON DATABASE dojango TO dojangoFOOFOOF;
\connect postgres;
CREATE table books(
  id int,
  title text
);
insert into books (id, title)
  select 1, 'Clean Code';
insert into books (id, title)
  select 2, 'Design Patterns';
