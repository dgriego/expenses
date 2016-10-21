DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses (
  id SERIAL PRIMARY KEY,
  amount NUMERIC(10, 2) NOT NULL CHECK (amount > 0.01),
  memo TEXT NOT NULL,
  created_on date DEFAULT CURRENT_DATE
);