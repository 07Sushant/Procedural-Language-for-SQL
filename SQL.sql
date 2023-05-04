DECLARE
  x int;
  y int;
  z int;

BEGIN

  x:=20;
  y:=30;
  
  IF x>y THEN
  DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||x);
  ELSE
    DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||y);

END IF;

END;



DECLARE
  x int;
  y int;
  z int;

BEGIN

  x:=20;
  y:=30;
  z:=60;

  IF x>y AND x>z THEN
  DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||x);
  ELSIF  y>z AND x>z THEN
    DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||y);
  ELSE
      DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||z);



END IF;

END;




DECLARE 
  x int;
  y int;
  z int;

BEGIN

  x := &x_input;
  y := &y_input;
  z := &z_input;

  IF x>y AND x>z THEN
    DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||x);
  ELSIF y>x AND y>z THEN
    DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||y);
  ELSE
    DBMS_OUTPUT.PUT_LINE('The greater number is: ' ||z);
  END IF;

END;




-- Reverse a string


DECLARE @number INT = 12345
SELECT CAST(REVERSE(CAST(@number AS VARCHAR(10))) AS INT)


DECLARE
  num number;
  rvs_num number:= 0;

BEGIN

  num:= 12345;
  while num>0
  LOOP
  rvs_num:=(rvs_num*10) + MOD(num,10);
  num:= trunc(num/10);
  end loop;
    dbms_output.PUT_LINE('The reversed number is: ' || rvs_num);
end;



DECLARE
  num number(2);
BEGIN
   for num in REVERSE 10..20 LOOP
   dbms_output.put_line('The value of the number are: ' || num);
   end loop;
end;



-- Arthematic operations

DECLARE 
  x int;
  y int;
  z int;

BEGIN

  x := &x_input;
  y := &y_input;
  z := x+y;
  

    dbms_output.put_line('The Sum of x and y is : ' || z);

end;

-- relational operator

DECLARE
a number:=10;
b number:=0;

BEGIN
if (a!=b) THEN
dbms_output.put_line('a is not equal to b');
ELSE
dbms_output.put_line('a is equal to b');
end if;

END;




DECLARE
a number;
b number;

BEGIN

  a number:=&a_input;
  b number:=&b_input;
if (a!=b) THEN
  dbms_output.put_line('a is not equal to b');
ELSE
  dbms_output.put_line('a is equal to b');
end if;

END;

--------------------------------

DECLARE
i integer:=90;

BEGIN
i:=i*13;
if i is null THEN
dbms_output.put_line('i is null');
ELSE
dbms_output.put_line('i is not null');
end IF;

end;

---------------------

DECLARE
i integer:=89;

BEGIN
if (i between 10 and 20 )then
dbms_output.put_line('the number is between 10 and 20');
ELSE
dbms_output.put_line('the number is  not between 10 and 20');
end if;

END;


---------------
DECLARE
i integer:=89;

BEGIN
if (i between 10 and 20 )then
dbms_output.put_line('the number is between 10 and 20');
ELSE
dbms_output.put_line('the number is  not between 10 and 20');
end if;

END;


-- IN function

if text in ('a', 'b', 'c', 'd') then 
   dbms_output.put_line