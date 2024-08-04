create table userprofile(
	id int auto_increment primary key not null,
    username nvarchar(100) not null,
    password nvarchar(100) not null,
    email nvarchar(100) not null,
    phonenumber nvarchar(20) not null,
    displayname nvarchar(100) not null,
    avatar nvarchar(255) not null,
    createddate date not null,
    deleted int not null
);

create table post(
	id int auto_increment primary key not null,
    idgroup int,
    iduser int not null,
    description TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    createddate datetime not null,
    totallike int,
    totalshare  int,
    stauts varchar(1) not null, -- 1: mới tạo, 2: đã duyêt, 3: từ chối 
    deleted int not null
);

create table comments(
	id int auto_increment primary key not null,
    iduser int not null,
    idpost int not null,
    description TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    createddate datetime not null,
    deleted int not null
);

create table albums(
	id int auto_increment primary key not null,
    iduser int,
    idpost int,
    albumname TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    description TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    creaeteddate datetime not null
);

create table images(
	id int auto_increment primary key not null,
    iduser int,
    idpost int,
    idalbum int,
    description TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    createddate datetime not null,
    deleted int not null
);

create table socialgroup(
	id int auto_increment primary key not null,
    idusercreated int not null,
    groupname TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    createddate datetime not null,
    typegroup varchar(10) not null, -- PRI - private, PUB - public
    deleted int not null
);

create table frienddata(
	id int auto_increment primary key not null,
    iduser int not null,
    idfriend int not null,
    status varchar(10) not null -- 1 mới gửi lời mời, 2 bạn bè, 3 từ chối
);

create table usergroup(
	id int auto_increment primary key not null,
    iduser int not null,
    idgroup int not null,
    status varchar(10) not null, -- 1 moi yeu cau, 2 da duyệt, 3 từ chối
    roleingroup varchar(30) not null
);