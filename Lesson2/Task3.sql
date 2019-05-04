create schema `grades` default character set utf8mb4;
use `grades`;

`grades`.`students` (`id` int not null, `name` varchar(128) not null, `marks` int not null);
create table `grades`.`grades` (`grade` int not null, `min_mark` int not null, `max_mark` int not null);

insert into `grades`.`students` (`id`, `name`, `marks`) values ('1', 'Julia', '88');
insert into `grades`.`students` (`id`, `name`, `marks`) values ('2', 'Samantha', '68');
insert into `grades`.`students` (`id`, `name`, `marks`) values ('3', 'Maria', '99');
insert into `grades`.`students` (`id`, `name`, `marks`) values ('4', 'Scarlet', '78');
insert into `grades`.`students` (`id`, `name`, `marks`) values ('5', 'Ashley', '63');
insert into `grades`.`students` (`id`, `name`, `marks`) values ('6', 'Jane', '81');

insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('1', '0', '9');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('2', '10', '19');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('3', '20', '29');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('4', '30', '39');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('5', '40', '49');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('6', '50', '59');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('7', '60', '69');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('8', '70', '79');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('9', '80', '89');
insert into `grades`.`grades` (`grade`, `min_mark`, `max_mark`) values ('10', '90', '99');

select (case when grade >= 8 then name else null end) name, grades.grade, students.marks from students
join grades where marks between min_mark and max_mark
order by grade desc, name, marks;