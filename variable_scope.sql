DECLARE

a number:= 10;
b number:= 20;

BEGIN

DBMS_OUTPUT.PUT_LINE(('outer variable: ' || a));
DBMS_OUTPUT.PUT_LINE(('outer variable: ' || b));

    DECLARE
     c number:= 30;
     d number:= 40;

    BEGIN
    DBMS_OUTPUT.PUT_LINE(('Inner variable: ' || c));
    DBMS_OUTPUT.PUT_LINE(('Inner variable: ' || d));

    end;

end;