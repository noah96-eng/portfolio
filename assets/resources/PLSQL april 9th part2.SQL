set serveroutput on; 

DECLARE
sm binary_integer :=0;
i binary_integer :=0;
BEGIN
loop
i := i + 1;
if i > 10 then
exit;
end if;
sm := sm + i;
end loop;
dbms_output.put_line('sum= ' || sm || '.');
END; 
DECLARE
i  binary_integer;
sm binary_integer :=0;
BEGIN
for  i   in   1 .. 10   loop
	dbms_output.put_line(" i = " || i);
	sm := sm + i;
end loop;
Dbms_output.put_line("the sum is " || sm);
END;
DECLARE
i    binary_integer :=0;
sm  binary_integer :=0;
BEGIN
	i := i+1;
	sm := 0;
	while (i < 10)  loop
		    
		    sm := sm + i
	end loop;		
Dbms_output.put_line("the sum is " || sm);
END;
