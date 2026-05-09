CREATE DATABASE IF NOT EXISTS ds_lab;

DROP TABLE IF EXISTS ds_lab.events;

CREATE TABLE ds_lab.events
(
    event_time  DateTime,
    user_id     UInt32,
    session_id  UInt32,
    product_id  UInt32,
    price       Float64,
    quantity    UInt32,
    country     String,
    device      String,
    event_type  String
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(event_time)
ORDER BY (event_time, country, device);

INSERT INTO ds_lab.events
SELECT
    event_time,
    user_id,
    session_id,
    product_id,
    price,
    quantity,
    country,
    device,
    event_type
FROM file('events_medium.csv', 'CSVWithNames');
