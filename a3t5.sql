-- usage:
-- mysql -u dbuser -p a3t5 < a3t5.sql
-- echo "select * from arrangement" | mysql -u dbuser a3t5

drop database if exists a3t5;
create database a3t5;
use a3t5;

drop table if exists a3t5.participant;
create table if not exists a3t5.participant
(
    pID int NOT NULL,
    pFname varchar(15),
    pLname varchar(15),
    primary key(pID)
);

drop table if exists a3t5.arrangement;
create table if not exists a3t5.arrangement
(
    arrID int NOT NULL,
    arrName varchar(25),
    arrTime date,
    arrSpaces int,
    primary key(arrID)
);

drop table if exists a3t5.tickets;
create table if not exists a3t5.tickets
(
    pID int NOT NULL,
    arrID int NOT NULL,
    ticketType char(1),
    primary key(pID,arrID),
    foreign key (pID) references a3t5.participant (pID),
    foreign key (arrID) references a3t5.arrangement (arrID)
);
