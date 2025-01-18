Create table like_table(
	lid int(20) Primary key auto_increment,
    pid int(20),
    uid int(20),
    Foreign key(pid) references posts(pid) on update cascade on delete cascade,
    Foreign key(uid) references user(id) on update cascade on delete cascade
);