create schema `Symmetric Pairs` default character set utf8mb4;
use `Symmetric Pairs`;

create table `Symmetric Pairs`.`function` (`x` int not null, `y` int not null);

insert into `Symmetric Pairs`.`function` (`x`, `y`) values ('20', '20');
insert into `Symmetric Pairs`.`function` (`x`, `y`) values ('20', '20');
insert into `Symmetric Pairs`.`function` (`x`, `y`) values ('20', '21');
insert into `Symmetric Pairs`.`function` (`x`, `y`) values ('23', '22');
insert into `Symmetric Pairs`.`function` (`x`, `y`) values ('22', '23');
insert into `Symmetric Pairs`.`function` (`x`, `y`) values ('21', '20');


SELECT f1.X, f1.Y FROM functions f1
JOIN functions f2 ON f1.X=f2.Y AND f1.Y=f2.X
GROUP BY f1.X, f1.Y
HAVING COUNT(f1.X)>1 or f1.X<f1.Y
ORDER BY f1.X 

