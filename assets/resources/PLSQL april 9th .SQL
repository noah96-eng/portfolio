set serveroutput on;
DECLARE
type gradeCount is varray(5) of integer;
gdcnt gradeCount;
type grade is varray(5) of char(1);
gd grade;
gradeCount integer;
BEGIN
gdcnt := gradeCount(0,0,0,0,0);
gd := grade("A", "B", "C", "D", "F");
loop
	i := i+1;
    if i < 60 then 
    exit;
end loop
Dbms_output.put_line("your grade is" || "F");
loop
	i := i+1;
    if i < 70 < 60 then 
    exit;
end loop
Dbms_output.put_line("your grade is" || "D");
loop
	i := i+1;
    if i < 80 < 70 then 
    exit;
end loop
Dbms_output.put_line("your grade is" || "C");
loop
	i := i+1;
    if i < 90 < 80 then 
    exit;
end loop
Dbms_output.put_line("your grade is" || "B");
loop
	i := i+1;
    if i > 90 then 
    exit;
end loop
Dbms_output.put_line("your grade is" || "A");
END; 