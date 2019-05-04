/*
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

*/





create schema `new_company` default character set utf8mb4;
use new_company;
create table `new_company`.`company` (`company_code` varchar(128) not null, `founder` varchar(128) not null);
insert into `new_company`.`company` (`company_code`, `founder`) values ('C1', 'Monica');
insert into `new_company`.`company` (`company_code`, `founder`) values ('C2', 'Samantha');

create table `new_company`.`lead_manager` (`lead_manager_code` varchar(128) not null, `company_code` varchar(128) not null);
insert into  `new_company`.`lead_manager` (`lead_manager_code`, `company_code`) values ('LM1', 'C1');
insert into  `new_company`.`lead_manager` (`lead_manager_code`, `company_code`) values ('LM2', 'C2');

create table `new_company`.`senior_manager` (`senior_manager_code` varchar(128) not null, `lead_manager_code` varchar(128) not null, `company_code` varchar(128) not null);
insert into `new_company`.`senior_manager` (`senior_manager_code`, `lead_manager_code`, `company_code`) values ('SM1', 'LM1', 'C1');
insert into `new_company`.`senior_manager` (`senior_manager_code`, `lead_manager_code`, `company_code`) values ('SM2', 'LM1', 'C1');
insert into `new_company`.`senior_manager` (`senior_manager_code`, `lead_manager_code`, `company_code`) values ('SM3', 'LM2', 'C2');

create table `new_company`.`manager` (`manager_code` varchar(128) not null, `senior_manager_code` varchar(128) not null, `lead_manager_code` varchar(128) not null, `company_code` varchar(128) not null);
insert into `new_company`.`manager` (`manager_code`, `senior_manager_code`, `lead_manager_code`, `company_code`) values ('M1', 'SM1', 'LM1', 'C1');
insert into `new_company`.`manager` (`manager_code`, `senior_manager_code`, `lead_manager_code`, `company_code`) values ('M2', 'SM3', 'LM2', 'C2');
insert into `new_company`.`manager` (`manager_code`, `senior_manager_code`, `lead_manager_code`, `company_code`) values ('M3', 'SM3', 'LM2', 'C2');

create table `new_company`.`employee` (`employee_code` varchar(128) not null, `manager_code` varchar(128) not null, `senior_manager_code` varchar(128) not null, `lead_manager_code` varchar(128) not null, `company_code` varchar(128) not null);
insert into `new_company`.`employee` (`employee_code`, `manager_code`, `senior_manager_code`, `lead_manager_code`, `company_code`) values ('E1', 'M1', 'SM1', 'LM1', 'C1');
insert into `new_company`.`employee` (`employee_code`, `manager_code`, `senior_manager_code`, `lead_manager_code`, `company_code`) values ('E2', 'M1', 'SM1', 'LM1', 'C1');
insert into `new_company`.`employee` (`employee_code`, `manager_code`, `senior_manager_code`, `lead_manager_code`, `company_code`) values ('E3', 'M2', 'SM3', 'LM2', 'C2');
insert into `new_company`.`employee` (`employee_code`, `manager_code`, `senior_manager_code`, `lead_manager_code`, `company_code`) values ('E4', 'M3', 'SM3', 'LM2', 'C2');

select C.company_code, C.founder, 
count(distinct L.lead_manager_code), count(distinct S.senior_manager_code),
count(distinct M.manager_code), count(distinct E.employee_code) 
from company C
left join lead_manager L on C.company_code = L.company_code
left join senior_manager S on L.lead_manager_code = S.lead_manager_code
left join manager M on S.senior_manager_code = M.senior_manager_code
left join employee E on  M.manager_code = E.manager_code
group by C.company_code, C.founder
order by company_code; 
 
