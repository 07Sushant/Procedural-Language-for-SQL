CREATE TABLE CUSTOMERS85
(
  ID INT NOT NULL,
  NAME VARCHAR(20) NOT NULL,
  AGE INT NOT NULL,
  ADDRESS CHAR(25),
  SALARY DECIMAL(18, 2),
  PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS85 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00);

INSERT INTO CUSTOMERS85 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00);

INSERT INTO CUSTOMERS85 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (3, 'Kaushik', 23, 'Kota', 2000.00);

INSERT INTO CUSTOMERS85 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00);

INSERT INTO CUSTOMERS85 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00);

INSERT INTO CUSTOMERS85 (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (6, 'Komal', 22, 'MP', 4500.00);

-- declaring explicit cursor DELETE

DECLARE
  c_id CUSTOMERS85.ID%TYPE;
  c_name CUSTOMERS85.NAME%TYPE;
  c_addr CUSTOMERS85.ADDRESS%TYPE;
  
  CURSOR c_customer IS
    SELECT ID, NAME, ADDRESS FROM CUSTOMERS85;
BEGIN
  OPEN c_customer;
  LOOP
    FETCH c_customer INTO c_id, c_name, c_addr;
  EXIT WHEN c-customer%notfound;

  dbms_output.put_line(c_id || ' ' || c_name || ''|| c_addr);
  END LOOP;
  CLOSE c_customer;
  END;