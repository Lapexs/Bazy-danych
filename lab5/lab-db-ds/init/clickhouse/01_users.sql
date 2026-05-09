-- ============================================
-- ClickHouse: użytkownik do laboratoriów
-- ============================================

CREATE USER IF NOT EXISTS student
IDENTIFIED WITH plaintext_password BY 'student'
HOST ANY;

CREATE DATABASE IF NOT EXISTS ds_lab;

GRANT
    SHOW,
    SELECT,
    INSERT,
    CREATE,
    ALTER,
    DROP,
    TRUNCATE,
    OPTIMIZE,
    CREATE DATABASE,
    CREATE TABLE,
    CREATE VIEW,
    CREATE TEMPORARY TABLE
ON *.* TO student;

-- GRANT DELETE ON *.* TO dbeaver;
-- GRANT FILE, URL ON *.* TO dbeaver;