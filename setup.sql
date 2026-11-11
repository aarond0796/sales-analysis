-- Create the sales table
CREATE TABLE sales (
    order_id    TEXT PRIMARY KEY,
    order_date  TEXT,
    region      TEXT,
    product     TEXT,
    category    TEXT,
    quantity    INTEGER,
    unit_price  REAL,
    unit_cost   REAL,
    sales       REAL,
    profit      REAL
);

-- After importing the CSV: convert DD/MM/YYYY text into YYYY-MM-DD dates
ALTER TABLE sales ADD COLUMN order_date_clean DATE;

UPDATE sales
SET order_date_clean =
    SUBSTR(order_date, 7, 4) || '-' ||
    SUBSTR(order_date, 4, 2) || '-' ||
    SUBSTR(order_date, 1, 2);