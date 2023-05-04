CREATE TABLE customer (
    ID INT not NULL,
    NAME VARCHAR (20) NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR (25),
    salary DECIMAL (25, 2),
    PRIMARY KEY(ID)
);

            --  CUSTOMER 1--
INSERT INTO customers1 (ID, NAME, AGE, ADDRESS, salary)
values (1, 'Sushant', 17, 'Kohima', 2000.00);

            --  CUSTOMER 2--
INSERT INTO customers2 (ID, NAME, AGE, ADDRESS, salary)
values (2, 'Sush', 17, 'Punjab', 2500.00);



DECLARE

i int:=1;

BEGIN
    while (i<=20) loop
        DBMS_OUTPUT.PUT_LINE('' || i );
        i:= i+3;
    end loop;
    end;


