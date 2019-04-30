create schema `manhattan distance` default character set utf8mb4;

use `manhattan distance`;

create table `manhattan distance`.`station`(`id` int not null,  `city` varchar(21) not null,
`state` varchar(2) not null, `lat_n` int not null, `long_w` int not null);

insert into `station` (`id`, `city`, `state`, `lat_n`, `long_w`) values('1', 'Samara', 'SO', '53', '50');
insert into `station` (`id`, `city`, `state`, `lat_n`, `long_w`) values('2', 'Sochy', 'KK', '43', '39');
insert into `station` (`id`, `city`, `state`, `lat_n`, `long_w`) values('3', 'Habarovsk', 'HK', '48', '135');
insert into `station` (`id`, `city`, `state`, `lat_n`, `long_w`) values('4', 'Magadan', 'MO', '59', '150');
insert into `station` (`id`, `city`, `state`, `lat_n`, `long_w`) values('5', 'Chelyabinsk', 'CO', '55', '61'); 

select round(abs(max(lat_n) - min(lat_n)) + abs(max(long_w) - min(long_w)), 4) from station;