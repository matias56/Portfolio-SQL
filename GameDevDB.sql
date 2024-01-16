

use GameDevelopers;

drop table devs;

create table devs (
 id INT IDENTITY(1,1) not null, 
 namesDev varchar(45) default 'None' not null, 
 lastndev varchar(45) default 'None' not null, 
 countrydev varchar(45) default 'None' not null, 
 category varchar(45) default 'None' not null, 
 workdev varchar(45) default 'None' not null, 
 birth date default 'None' not null);




insert into devs
values('Matias', 'Gemignani', 'Argentina', 'Programmer', 'Dungeons & Puzzles', '2000/01/05');

Alter table devs add college varchar(45) default('None') not null;

UPDATE devs SET college = 'IPCAC';



insert into devs
values('John', 'Romero', 'USA', 'Game Designer', 'Doom', '1967/10/28', 'Sierra');



insert into devs
values('Todd', 'Howard', 'USA', 'Programmer', 'Fallout 3', '1971/10/06', 'William and Mary');


DELETE FROM devs WHERE lastnDev='Howard';


insert into devs
values('Mateo', 'Schiavina', 'Argentina', '2D Artist', 'The Fall of the Empires', '2000/06/07', 'IPCAC');

insert into devs
values('Sebastian', 'Pineda', 'Argentina', 'UI Artist', 'Dungeons & Puzzles', '1998/04/18', 'UAI');

UPDATE devs
SET category= 'Music Composer'
WHERE lastndev = 'Pineda';

insert into devs
values('Gustavo', 'Vega', 'Argentina', 'Programmer', 'None', '1991/11/25', 'IPCAC');

select lastndev, category from devs
where category = 'Programmer';

CREATE VIEW [Devs Names From Argentina] AS
SELECT namesDev, lastndev
FROM devs
WHERE countrydev = 'Argentina';

SELECT * FROM [Devs Names From Argentina];

ALTER TABLE devs
add salary int default 0 not null;

UPDATE devs
SET salary = 2000
where category = 'Programmer'

UPDATE devs
SET salary = 1000
where category = '2D Artist'

UPDATE devs
SET salary = 1500
where category = 'Game Designer'

UPDATE devs
SET salary = 500
where category = 'Music Composer'


select * from devs;

select * from devs where workdev = 'none';

update devs set salary = salary + (salary*10)/100

select salary from devs;

create table kickstarters (
 id INT IDENTITY(1,1) not null, 
 names varchar(45) default 'None' not null, 
 country varchar(45) default 'None' not null, 
 mail varchar(45) default 'None' not null, 
 donation int default 0 not null);

 drop table kickstarters;


insert into kickstarters
values('Juan', 'Colombia', 'juandominguez@gmail.com', '20');

insert into kickstarters
values('Sofia', 'Italy', 'sofipesce@yahoo.com.ar', '100');

Alter table kickstarters add ranks varchar(45) default 'None' not null;

Alter table kickstarters add gift varchar(45) default('None') not null;

UPDATE kickstarters
SET gift= 'Pre order'
WHERE ranks = 'Common';

UPDATE kickstarters
SET gift= 'Pre order + DLC'
WHERE ranks = 'Premium';


UPDATE kickstarters
SET ranks= 'Common'
WHERE donation < 100;

UPDATE kickstarters
SET ranks= 'Premium'
WHERE donation >= 100;

select * from kickstarters;