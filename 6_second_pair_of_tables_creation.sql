
use VP_module_2

go
drop table if exists Bank
go

CREATE TABLE Bank(
Bank_id int NOT NULL PRIMARY KEY,
Bank_Name varchar(30),
Country varchar(30),
City varchar(30),
Street varchar(20),
State_or_Region varchar(20),
Building varchar(5),
Number_of_employees int,
Head varchar(50),
Rating decimal,
Bank_type varchar(30),
date_Of_Foundation date);
go
drop table if exists Opertion
go
CREATE TABLE Operation(
Operation_id int NOT NULL PRIMARY KEY,
Bank int FOREIGN KEY REFERENCES Bank(Bank_id),
Recepient_Name varchar(60),
Recepient_Phone varchar(30),
Recepient_CardID varchar(16),
SenderName varchar(60),
SenderPhone varchar(30),
Sender_CardID varchar(16),
Amount decimal, 
Duration_in_Seconds int,
Comission int,
Operation_Message varchar(150),
Type_of_Operation varchar (100),
Date_of_Operation date);