create table users(
	username VARCHAR(50) not null primary key,
    password VARCHAR(100) not null,
    enabled boolean not null

);

-- Authority is like ROLE_ADMIN or ROLE_USER
create table authorities(
	username VARCHAR(50) not null,
    authority VARCHAR(50) not null,
    constraint fk_user_authorities foreign key(username) references users(username)
);


create table goal(
	id_Goal INT not null primary key,
    goal_Name VARCHAR(45) not null,
    current_Amount DOUBLE not null,
    target_Amount DOUBLE not null,
    description_Text VARCHAR(45) not null,
    picture VARCHAR(255) not null,
    target_Date VARCHAR(45),
    user_Id INT not null
);