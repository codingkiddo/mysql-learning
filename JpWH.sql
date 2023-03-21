create table USERS (
ID int not null primary key,
USERNAME varchar(15) not null unique
);
insert into users values (1, 'vinod');
insert into users values (2, 'kumar');

select * from users;

create table BILLINGDETAILS (
ID int not null primary key,
ACCOUNT varchar(15) not null,
BANKNAME varchar(255) not null,
USER_ID int not null,
CONSTRAINT `fk_user_billingdetails` foreign key (`USER_ID`) references `USERS` (`ID`)
);
insert into BILLINGDETAILS values (1, 'ICICI123', 'ICICI Bank', 1);
insert into BILLINGDETAILS values (2, 'SBI123', 'SBI Bank', 1);
insert into BILLINGDETAILS values (3, 'ICICI124', 'ICICI Bank', 2);

select * from BILLINGDETAILS;



COMMIT;

select * from USERS u where u.ID = 1;


select * from USERS u 
	left outer join BILLINGDETAILS bd 
    on bd.USER_ID = u.ID where u.ID = 1;


select * from USERS u 
	 join BILLINGDETAILS bd 
    on bd.USER_ID = u.ID where u.ID = 1;