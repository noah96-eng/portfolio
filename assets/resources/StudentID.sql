drop table STUDENT cascade constraints;
create table Studentinfo (
name varchar2(30) not null,
SID number(10) not null,
class number(2),
major varchar2(4),
primary key (StudentNumber)); 

drop table section cascade constraints;
create table section (
CourseNo char(8),
SectionID number(4),
InstructorSSN number(9),
constraint section_pk primary key (CourseNo, SectionID),
constraint section_ct check (instructorSSN is not null) );

alter table section add (deptName varchar2(25));
alter table section disable constraint section_ct;
alter table section drop(deptName);
show tables;
show attributes;