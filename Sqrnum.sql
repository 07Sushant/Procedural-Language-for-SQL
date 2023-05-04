declare 
a number;
procedure sqrnum (x in out number) IS
BEGIN

x:= x*x;

end 
BEGIN
a:=45;
sqrnum(a);
dbms_output.put_line('srq of no is : ' ||a);
end;


