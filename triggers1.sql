-- Creating Employee1 Table

CREATE TABLE Employee1 (
  employee_id NUMBER PRIMARY KEY,
  employee_name VARCHAR2(50),
  salary NUMBER
);



-- Inserting row into the Employee table


INSERT INTO Employee1 (employee_id, employee_name, salary)
VALUES (1, 'Sushant', 50000);

INSERT INTO Employee1 (employee_id, employee_name, salary)
VALUES (2, 'Namit', 60000);

INSERT INTO Employee1 (employee_id, employee_name, salary)
VALUES (3, 'Vashnavi', 70000);



-- Learning Triggers
CREATE OR REPLACE TRIGGER salary_difference1
BEFORE INSERT OR DELETE OR UPDATE ON Employee1
FOR EACH ROW
DECLARE
  salary_difference NUMBER;
BEGIN
  salary_difference := :new.salary - :old.salary;
  dbms_output.put_line('Old Salary: ' || :old.salary);
  dbms_output.put_line('New Salary: ' || :new.salary);
  dbms_output.put_line('Salary difference: ' || salary_difference);
END;
/

-- Inserting new raw to check the trigger

INSERT INTO Employee1 (employee_id, employee_name, salary)
VALUES (7, 'Prashant', 90000);


UPDATE Employee1
SET employee_name = 'Prashant Kumar', salary = 100000
WHERE employee_id = 7;

-- Sushant