/*Есть две ленты новостей - главная и дополнительная. В каждой ленте может быть от 5 до 10 новостей например. 
Причем, важна позиция каждой новости в ленте. Новости могут быть скрытыми и фиксированными. И важна дата создания каждой новости.
 Кроме того у каждой новости может быть от 1 до 3 слайдов. У каждого слайда есть название, бэкграун-картинка и контент.
 Внутри контента может быть не только текст, но и скажем ссылки и html, то есть type TEXT для него не подойдет (это подсказка). 
 Нужно сделать архитектуру таблиц с учетом всех этих условий.*/
 
create schema `news_line` default character set utf8mb4;
use news_line;
create table `news` (
news_id int(11) NOT NULL auto_increment,
news_status enum('main', 'additional') NOT NULL default 'main',
news_title varchar(128) NOT NULL,
line_position tinyint NOT NULL,
news_putdate datetime NOT NULL default '0000-00-00 00:00:00',
hide_news tinyint(1) NOT NULL,
fix_news tinyint(1) NOT NULL,
primary key (news_id));

create table `slide`(
slide_id int(11) NOT NULL auto_increment,
news_id int(11) NOT NULL,
slide_position int NOT NULL,
slide_name varchar(255) NOT NULL,
slide_back varchar(255) NOT NULL,
slide_content JSON NOT NULL,
primary key (slide_id));

select news.line_position, news.news_title, slide.slide_position, slide.slide_name, slide.slide_back, slide.slide_content from news
join slide on news.news_id = slide.news_id
where news.news_status = 'main' and news.hide_news = 1
order by news.line_position, slide.slide_position
;