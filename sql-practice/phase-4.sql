CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  department VARCHAR(60) NOT NULL,
  role VARCHAR(60) NOT NULL
);

CREATE TABLE relationships (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  a_employee_id INTEGER NOT NULL,
  b_employee_id INTEGER NOT NULL
);

CREATE TABLE performance_reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  employee_id INTEGER NOT NULL,
  score DECIMAL(3, 1) NOT NULL
);

CREATE TABLE parties (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  budget DECIMAL(5, 2) NOT NULL,
  is_onsite BOOLEAN DEFAULT 1
);

INSERT INTO employees
  (first_name, last_name, department, role)
VALUES
  ('Michael', 'Scott', 'Management', 'Regional Manager'),
  ('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager'),
  ('Jim', 'Halpert', 'Sales', 'Sales Representative'),
  ('Pam', 'Beesly', 'Reception', 'Receptionist'),
  ('Kelly', 'Kapoor', 'Product Oversight', 'Customer Service Representative'),
  ('Angela', 'Martin', 'Accounting', 'Head of Accounting'),
  ('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff');


INSERT INTO relatipnships (a_employee_id, b_employee_id)
VALUES(7, 4);
INSERT INTO employees(first_name, last_name, department, role)
VALUES("Ryan", "Howard", "Sales", "Temp");
INSERT INTO parties (budget)
VALUES(100.00)
INSERT INTO performance_reviews (employee_id, score)
VALUES (2, 3.3), (3, 4.2)
