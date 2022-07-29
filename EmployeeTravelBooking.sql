Go
Create Database Sprint_1

Go
use Sprint_1

Go
CREATE TABLE Employee
       (EmpID int not null primary key,
        ENAME varchar(10),
		Department varchar(20),
		Designation varchar(20),
        Mid int,
        City varchar(10),
        [Password] varchar(10),
        Role varchar(50),foreign key(Role) references Roles(Role)
);

create table Ticket
(
Tid varchar(10) not null primary key,
empid int not null,
[Source] varchar(10),
Destination varchar(10),
FlightDate Date,
Seats int,
Approved char(1) default 'N',
Check(Approved in('y','n','Y','N')),
constraint fk_Ticket_ foreign key(empid) references Employee(empid)
)



/*
create table Booking
(
Bid Varchar(10) not null primary key,
Tid Varchar(10) not null,
DateOfBooking DATE,
[Source] varchar(250),
Destination varchar(250),
Approved char(1) default 'N',
Check(Approved in('y','n','Y','N')),
constraint fk_Booking_ foreign key(Tid) references Ticket(Tid)
)
*/


create table TravelAgent
(
Agentid varchar(10) not null primary key,
AgentName varchar(250),
C_No varchar(50),
[Password] varchar(10),
Role varchar(50),foreign key(Role) references Roles(Role)
)


create table TravelIntenary
(
Bid varchar(10) not null primary key,
Tid varchar(10) not null,
DateOfJourny date,
Cost money,
constraint fk_TravelIntenary_ foreign key(Tid) references Ticket(Tid)
)


create table Approve
(
Tid varchar(10) not null primary key,
empid int not null,
[Source] varchar(10),
Destination varchar(10),
FlightDate Date,
Seats int,
Approved char(1) default 'Y',
Check(Approved in('y','n','Y','N')),
constraint fk_Approve_ foreign key(empid) references Employee(empid)
)

select * from Employee

Insert into Employee values (1,'Ajay','Java','Jr. Developer',2,'Satara','Ajay123') 
Insert into Employee values (2,'Alex','NET','Sr. Developer',2,'Pune','Ajay123')
Insert into Employee values (3,'Omkar','IOT','Team Lead',5,'Mumbai','Ajay123')
Insert into Employee values (4,'Aleen','Java','Team member',3,'Delhi','Ajay123')
Insert into Employee values (5,'Lee','PHP','Jr. Developer',2,'Satara','Ajay123')

UPDATE Employee Set Mid = default where empid = 5;
select * from Ticket
select * from TravelAgent
--select * from Booking
select * from TravelIntenary

Insert into TravelAgent values (1,'Agent',1234567890,'Ajay123')

--Drop table TravelIntenary
--Drop table Booking
--Drop table TravelAgent
--Drop table Ticket


select * from Ticket
Select Empoyee.EmployeeName as EmployeeName from Empoyee Inner Join Employee as mgr On Employee.Mid = mgr.EmpID

ALTER TABLE Ticket  
ADD FlightDate DateTime; 


go
create proc last_generated_EmployeeId @EmpId int out 
as
declare @maxEmpId char(4)
select @maxEmpId =max(EMPLOYEEID) from OEMPLOYEE
if @maxEmpId  is null
begin
set  @EmpId='0'
end
else
begin
 set  @EmpId=cast (SUBSTRING(@maxEmpId ,2,len(@maxEmpId )) as int)
 --print @pid
end



declare  @EmpId int
exec last_generated_EmployeeId  @EmpId out
print  @EmpId




drop table Approve

insert into Approve(Tid, empid, Source,Destination,FlightDate,Seats) select Tid, empid, Source,Destination,FlightDate,Seats from Ticket where empid= 1


delete from Approve where empid=  3

select * from TravelIntenary
select * from Employee
select * from Approve
select * from Ticket
select * from TravelAgent

Alter Table Approve Add Date_Time DateTime default getdate()

Create Table Roles
(
[Role] varchar(50) primary key,
)
Insert into Roles values ('Employee') 
Insert into Roles values ('Manager')
Insert into Roles values ('Travel Agent')

sp_help Employee
drop table Employee
drop table TravelAgent
sp_help TravelAgent
select * from Roles

ALTER TABLE Employee
ADD RoleID varchar(20),constraint fk_Employee_ foreign key(RoleID) references Roles(RoleID);

ALTER TABLE TravelAgent
ADD RoleID int,constraint fk_TravelAgent_ foreign key(RoleID) references Roles(RoleID);

delete from Employee where EmpID = 5

drop constraint 
sp_help Roles
drop table Roles