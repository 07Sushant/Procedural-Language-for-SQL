DECLARE

grade char(1):='B';

BEGIN

CASE 
    when grade:='A' then DBMS_OUTPUT.PUT_LINE('Excellent');
    when grade:='B' then DBMS_OUTPUT.PUT_LINE('Very good');
    when grade:='E' then DBMS_OUTPUT.PUT_LINE('ReAppear');
    ELSE

             DBMS_OUTPUT.PUT_LINE('no search found');
end CASE;
end;