USE techblog;

CREATE TABLE categories(
	cid int primary key auto_increment,
    name varchar(30) unique not null,
    description varchar(100)
);


CREATE TABLE posts(
	pid int primary key auto_increment,
    pTitle varchar(50) not null,
    pContent longtext,
    pCode longtext,
    pPic varchar(50),
    pDate timestamp default now(),
    catId int,
    foreign key (catid) references categories(cid) on update cascade on delete cascade
);
