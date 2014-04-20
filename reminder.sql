create database reminder character set utf8;
use reminder;

create table reminder(
    reminder_id bigint unsigned not null auto_increment,
    random_id char(16) character set ascii not null,
    email_address varchar(256) not null,
    content text not null,
    first_at datetime not null,
    next_at datetime not null,
    period_at datetime not null,
    created_at datetime not null,
    deleted_at datetime not null,
    primary key(reminder_id),
    unique(random_id),
    index(next_at, deleted_at)
);
