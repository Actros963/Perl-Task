create schema `students` default character set utf8mb4;               	                                   

use students;                                                                                                              

create table `students`.`students` (`id` int not null, `name` varchar(128) not null, primary key(`id`));               
create table `students`.`friends` (`id` int not null, `friend_id` int not null, primary key(`id`));                
create table `students`.`packages` (`id` int not null, `salary` decimal(5,2) not null, primary key(`id`));             


insert into `students`.`students` (`id`, `name`) values('1', 'Ashley');													   
insert into `students`.`students` (`id`, `name`) values('2', 'Samantha');
insert into `students`.`students` (`id`, `name`) values('3', 'Julia');
insert into `students`.`students` (`id`, `name`) values('4', 'Scarlet');


insert into `students`.`friends` (`id`, `friend_id`) values('1', '2');													  
insert into `students`.`friends` (`id`, `friend_id`) values('2', '3');
insert into `students`.`friends` (`id`, `friend_id`) values('3', '4');
insert into `students`.`friends` (`id`, `friend_id`) values('4', '1');


insert into `students`.`packages` (`id`, `salary`) values('1', '15.20');												   
insert into `students`.`packages` (`id`, `salary`) values('2', '10.06');
insert into `students`.`packages` (`id`, `salary`) values('3', '11.55');
insert into `students`.`packages` (`id`, `salary`) values('4', '12.12');

select students.name from students
join packages on students.id = packages.id
join friends on students.id=friends.id
join packages pa on friends.friend_id=pa.id
where pa. salary > packages.salary order by pa.salary;