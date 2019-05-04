/*Есть две ленты новостей - главная и дополнительная. В каждой ленте может быть от 5 до 10 новостей например. 
Причем, важна позиция каждой новости в ленте. Новости могут быть скрытыми и фиксированными. И важна дата создания каждой новости.
 Кроме того у каждой новости может быть от 1 до 3 слайдов. У каждого слайда есть название, бэкграун-картинка и контент.
 Внутри контента может быть не только текст, но и скажем ссылки и html, то есть type TEXT для него не подойдет (это подсказка). 
 Нужно сделать архитектуру таблиц с учетом всех этих условий.*/
 
create schema `news_line` default character set utf8mb4;
use news_line;

create table `main_news_line` (
news_id int(11) NOT NULL auto_increment,
news_title varchar(128) NOT NULL,
news_text text NOT NULL,
news_putdate datetime NOT NULL default '0000-00-00 00:00:00',
news_slide1_id int NULL,
news_slide2_id int NULL,
news_slide3_id int NULL,
hide_news enum('show', 'hide') NOT NULL default 'show',
primary key (news_id));

create table `additional_news_line` (
news_id int(11) NOT NULL auto_increment,
news_title varchar(128) NOT NULL,
news_text text NOT NULL,
news_putdate datetime NOT NULL default '0000-00-00 00:00:00',
news_slide1_id int NULL,
news_slide2_id int NULL,
news_slide3_id int NULL,
hide_news enum('show', 'hide') NOT NULL default 'show',
primary key (news_id));

create table `slide_content`(
slide_id int NOT NULL auto_increment,
slide_name varchar(128) NOT NULL,
slide_back mediumblob NOT NULL,
slide_content varchar(255) NOT NULL,
primary key (slide_id));