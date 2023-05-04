-- Printitng Multiplication Table

-- Using While LOOP

DECLARE
    table_number NUMBER;
    counter NUMBER := 1;
BEGIN
    table_number := &table_number; 
    
    WHILE counter <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE(table_number || ' x ' || counter || ' = ' || (table_number * counter));
        counter := counter + 1;
    END LOOP;
END;



-- Using For LOOP

DECLARE
    table_number NUMBER;
BEGIN

    table_number := &table_number;
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(table_number || ' x ' || i || ' = ' || (table_number * i));
    END LOOP;
END;

printf( )




