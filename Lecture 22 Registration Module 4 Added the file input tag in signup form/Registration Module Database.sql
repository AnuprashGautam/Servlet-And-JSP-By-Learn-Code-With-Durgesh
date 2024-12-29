Create database youtube;
use youtube;

Create table user(
	id int(12) PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    password varchar(50),
    email varchar(60),
    imageName varchar(100)
)


