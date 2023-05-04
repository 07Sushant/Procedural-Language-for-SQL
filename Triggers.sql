CREATE TABLE CUSTOMERS7
(
  ID INT NOT NULL,
  NAME VARCHAR(20) NOT NULL,
  AGE INT NOT NULL,
  ADDRESS CHAR(25),
  SALARY DECIMAL(18, 2),
  PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS7
 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00);

INSERT INTO CUSTOMERS7
 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00);

INSERT INTO CUSTOMERS7
 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (3, 'Kaushik', 23, 'Kota', 2000.00);

INSERT INTO CUSTOMERS7
 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00);

INSERT INTO CUSTOMERS7
 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00);

INSERT INTO CUSTOMERS7
 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (6, 'Komal', 22, 'MP', 4500.00);

-- LEARNING TRIGGERS

CREATE OR REPLACE TRIGGER salary_difference
AFTER DELETE OR INSERT OR UPDATE ON CUSTOMERS7
FOR EACH ROW 
DECLARE
  sal_diff NUMBER;
BEGIN
  IF UPDATING THEN 
    sal_diff := :new.salary - :old.salary; 
    dbms_output.put_line('old salary: ' || :old.salary); 
    dbms_output.put_line('new salary: ' || :new.salary); 
    dbms_output.put_line('salary difference: ' || sal_diff); 
  ELSIF INSERTING THEN 
    dbms_output.put_line('new salary: ' || :new.salary); 
  ELSIF DELETING THEN 
    dbms_output.put_line('old salary: ' || :old.salary); 
  END IF;
END;



-- INSERTING NEW ROW
INSERT INTO CUSTOMERS7 (ID, NAME, AGE, ADDRESS, salary)
values (20, 'Sush', 17, 'Punjab', 7000.00)





