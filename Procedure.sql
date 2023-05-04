-- CREATE PROCEDURE GREETINGS
-- AS
-- BEGIN
--   DBMS_OUTPUT.PUT_LINE('Sushant');
-- END Greetings;


-- BEGIN
--   GREETINGS;
-- END;



CREATE PROCEDURE Shop
AS
SELECT * FROM Customers
GO;

EXEC Shop;




declare 
a number;
b number;
c number;

procedure finndmin( x IN number, y IN number, z OUT number) IS
BEGIN
    if x<y THEN 
        z:=x;
    else 
        z:=y;
    end if;

end;
BEGIN
a:=20
b:=40
finndmin(a,b,c)
dbms_output.put_line('The min is : ' ||c);
end;