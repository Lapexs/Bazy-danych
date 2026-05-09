-- ============================================================
-- LAB 1 – ClickHouse
-- 01_schema.sql
--
-- Cel:
--  - stworzyć pierwszą tabelę faktów
--  - zobaczyć jak działa MergeTree
--  - NIE optymalizujemy jeszcze pod konkretne zapytania
-- ============================================================

CREATE DATABASE IF NOT EXISTS ds_lab;

DROP TABLE IF EXISTS ds_lab.events;

CREATE TABLE ds_lab.events
(
    -- czas zdarzenia (oś czasu analiz)
    event_time DateTime,

    -- identyfikatory
    user_id    UInt32,
    session_id UInt32,
    product_id UInt32,

    -- miary
    price      Float64,
    quantity   UInt8,

    -- wymiary opisowe
    country    String,
    device     String,
    event_type String
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(event_time)
ORDER BY event_time;
