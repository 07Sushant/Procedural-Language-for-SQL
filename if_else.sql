DECLARE

a number(3):= 10;


BEGIN

if (a=10) THEN
    DBMS_OUTPUT.PUT_LINE(('Value of a is 10: '));
elsif (1=20) THEN
    DBMS_OUTPUT.PUT_LINE(('Value of a is 20: '));
elsif (a=30) THEN
        DBMS_OUTPUT.PUT_LINE(('Value of a is 30: '));
ELSE
        DBMS_OUTPUT.PUT_LINE(('Value of a is 100: '));
end if;
END;



    