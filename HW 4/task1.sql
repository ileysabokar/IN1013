DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

 CREATE TABLE petPet (petname VARCHAR(10), owner VARCHAR(20), species VARCHAR(20),
     gender ENUM ('M', 'F'), birth DATE, death DATE);
 CREATE TABLE petEvent(petname VARCHAR(10), eventdate DATE, 
     eventtype VARCHAR(255), remark VARCHAR(255));

alter table petPet add primary key (petname);
 alter table petEvent add primary key (petname,eventdate);
 alter table petEvent add foreign key (petname) references petPet (petname);