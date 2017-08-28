CREATE TABLE todo (
  id serial primary key,
title varchar not null,
details varchar null,
priority integer not null default 1,
created_at timestamp not null,
completed boolean not null default false,
completed_at timestamp null
);

INSERT INTO todo (title, details, created_at) VALUES
  ('walk the dog', 'go by the park', CURRENT_TIMESTAMP),
  ('wash the car', 'make it squeaky clean', CURRENT_TIMESTAMP),
  ('eat cake', 'very easy chore', CURRENT_TIMESTAMP),
  ('plant some vegatable', 'healthy', CURRENT_TIMESTAMP),
  ('finish coding', 'this DB specifically', CURRENT_TIMESTAMP);

SELECT * FROM todo WHERE completed = false;

SELECT * FROM todo WHERE priority > 1;

UPDATE todo SET completed = 't' WHERE title = 'finish coding';

DELETE FROM todo WHERE completed = 't';

DELETE FROM todo;
