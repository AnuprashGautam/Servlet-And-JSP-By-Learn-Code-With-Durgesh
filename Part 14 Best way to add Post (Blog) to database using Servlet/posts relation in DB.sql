CREATE TABLE posts(
	pid int primary key auto_increment,
    pTitle varchar(50) not null,
    pContent longtext,
    pCode longtext,
    pPic varchar(50),
    pDate timestamp default now(),
    catId int,
    userId int not null,
    foreign key (catid) references categories(cid) on update cascade on delete cascade,
    foreign key (userId) references user(id) on  update cascade  on delete cascade 
);