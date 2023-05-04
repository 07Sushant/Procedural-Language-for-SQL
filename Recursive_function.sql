CREATE OR REPLACE FUNCTION factorial(num IN NUMBER)
RETURN NUMBER
IS
   fact NUMBER;
BEGIN
   IF num <= 1 THEN
      RETURN 1;
   ELSE
      fact := num * factorial(num-1);
      RETURN fact;
   END IF;
END factorial;

DECLARE
   x NUMBER;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Please enter a positive integer:');
   x := &x;
   IF x < 0 THEN
      DBMS_OUTPUT.PUT_LINE('Input must be a positive integer.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('The factorial of ' || x || ' is ' || factorial(x));
   END IF;
END;


-- FINDING FACTORIAL OF A NUMBER


DECLARE
  n number;
  result number;

  function factorial(x number)
  return number
  is
    fact number;
  BEGIN
    if x=0 then 
      fact:=1;
    else
      fact:=x*factorial(x-1);
    end if;
    return fact;
  end;
BEGIN
  n:=8;
  result := factorial(n);
  dbms_output.put_line('The Factorial is: '||result);
end;


-- FACTORIAL USING FOR LOOP

DECLARE
  n number;
  result number := 1;
BEGIN
  n := 8;
  for i in 1..n loop
    result := result * i;
  end loop;
  dbms_output.put_line('The Factorial is: ' || result);
END


-- FACTORIAL USING WJILE LOOP
DECLARE
  input_number number;
  result NUMBER := 1;
BEGIN

input_number:= '&Enter a number: ';
  dbms_output.put_line('You entered: ' || input_number);
  WHILE n > 0 LOOP
    result := result * n;
    n := n - 1;
  END LOOP;
  dbms_output.put_line('The factorial of 8 is: ' || result);
END;