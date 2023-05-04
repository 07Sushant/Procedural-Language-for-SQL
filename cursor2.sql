DECLARE
total_row number(2);

BEGIN
UPDATE CUSTOMERS99 SET SALARY = SALARY + 500;
IF sql%notfound THEN
dbms_output.put_line('No customer slected');
ELSEIF sql%found THEN
total_rows:= sql%rowcount;
dbms_output.put_line('Customer selected:' || total_rows);
END IF;
END;


