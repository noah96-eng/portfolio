create table Patient(
first_name varchar2(20) Not NULL,
last_name varchar2(20) Not NULL,
phone varchar2(10) Not NULL,
street varchar2(50) Not NULL,
zipcode varchar(5) Not NULL,
PatiD varchar2(10) Not NULL
CONSTRAINT Patient_pk PRIMARY KEY (first_name. last_name, phone)
);

create table Doctor(
DociD varchar2(10) Not NULL,
MRI NUMBER(4),
Ultra sound NUMBER(4),
XRAY NUMBER(4),
Medication varchar2(50),
CONSTRAINT Doctor_pk PRIMARY KEY (DociD)
);
create table Medicalcenter(
PrescribingDociD varchar2(10) Not NULL,
Medicalhistory   varchar2(1000),
Prescribedtreatment varchar2(100), number(10), Not NULL,
PatientiD varchar2(10) Not NULL,
CONSTRAINT Medicalcenter_pk PRIMARY KEY (PrescribingDociD, PatientiD)
);
CREATE TABLE EMPLOYEES
(
EmployeeNo                      VARCHAR(10)             NOT NULL           UNIQUE,
DepartmentName            VARCHAR(30)             NOT NULL           DEFAULT “Human Resources”,
FirstName                           VARCHAR(25)             NOT NULL,
LastName                            VARCHAR(25)             NOT NULL,
Category                              VARCHAR(20)             NOT NULL,
HourlyRate                         CURRENCY          NOT NULL,
TimeCard                             LOGICAL              NOT NULL,
HourlySalaried                   VARCHAR(1)               NOT NULL,
EmpType                             VARCHAR(1)               NOT NULL,
Terminated                         LOGICAL              NOT NULL,
ExemptCode                       VARCHAR(2)               NOT NULL,
Supervisor                           LOGICAL              NOT NULL,
SupervisorName                VARCHAR(50)             NOT NULL,
BirthDate                             DATE                     NOT NULL,
CollegeDegree                     VARCHAR(5)               NOT NULL,
CONSTRAINT                     Employee_PK    PRIMARY KEY(EmployeeNo
);
CREATE TABLE DOCTORINFO
(
DociD     Int Not Null
CHECK (DociD BETWEEN 34 and 167),
Name              VarChar (20),
Age      Int        CHECK (Age >= 21),
Quota                         Money                         CHECK (Quota >= 0.0),
HireDate       DateTime,
CONSTRAINT  QuotaCap CHECK ((HireDate < “01-01-2004”) OR (Quota <=300000))
)
CREATE TABLE DOCable
(
DocID        INT Primary Key,
DocSIN    SIN,
CONSTRAINT CheckSIN
CHECK (EmployeeSIN LIKE
‘ [0-9][0-9][0-9] – [0-9][0-9] [0-9] – [0-9][0-9][0-9] ‘)
)
CREATE TABLE  tblHospital
(
HospitallNo                 Int                    IDENTITY (1,1),
Name                    Char(50)          NOT NULL,
Address                 Char(50)          NULL,
City                       Char(25)          NULL,
)
CREATE TABLE  tblRoom
(
HospitalNo           Int                    NOT NULL ,
RoomNo  Int                    NOT NULL,
Type                    Char(50)          NULL,
PRIMARY KEY (HospitalNo, RoomNo),
FOREIGN KEY (HospitalNo) REFERENCES tblHospital
)