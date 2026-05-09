DROP TABLE IF EXISTS events;

CREATE TABLE events (
  event_time timestamp,
  user_id int,
  session_id int,
  product_id int,
  price double precision,
  quantity int,
  country text,
  device text,
  event_type text
);

COPY events
FROM '/data/events_medium.csv'
WITH (FORMAT csv, HEADER true);
