

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

select * from devs;

