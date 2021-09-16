CREATE DATABASE noteList;
USE noteList;

--Creating tables--

CREATE table users(
user_id int NOT null AUTO_INCREMENT,
user_name varchar(50) NOT NULL,
user_email varchar(50) NOT NULL,
PRIMARY KEY (user_id)
);

create table notes(
    note_id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    note_title varchar(100) NOT NULL,
    note_content text NOT NULL,
    note_createdate timestamp NULL DEFAULT NULL,
    note_updatedate timestamp NULL DEFAULT NULL,
    note_deletable TINYINT NOT NULL,
    PRIMARY KEY (note_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE table notes_categories(
    note_id int NOT NULL,
    category_id tinyint NOT NULL,
    FOREIGN KEY (note_id) REFERENCES notes(note_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

create table categories(
    category_id tinyint NOT NULL AUTO_INCREMENT,
    category_name char(100) NOT NULL,
    PRIMARY KEY (category_id)
);

--Creating data for tables--

INSERT INTO users (user_id,user_name,user_email)
VALUES (1,"Usuario Uno","userone@user.com"),(2,"Usuario Dos","usertwo@user.com"),(3,"Usuario Tres","userthree@user.com"),(4,"Usuario Cuatro","userfour@user.com"),(5,"Usuario Cinco","userfive@user.com"),(6,"Usuario Seis","usersix@user.com"),(7,"Usuario Siete","userseven@user.com"),(8,"Usuario Ocho","usereight@user.com"),(9,"Usuario Nueve","usernine@user.com"),(10,"Usuario Diez","userten@user.com");

INSERT INTO notes (note_id,user_id,note_title,note_content,note_createdate,note_updatedate,note_deletable)
VALUES (1,1,"Usuario Uno","userone@user.com",NULL ,NULL,1 ),(2,1,"Usuario Uno de Nuevo","userone@user.com",NULL,NULL,0 ),(3,3,"Usuario Tres","userthree@user.com",NULL ,NULL,1 ),(4,4,"Usuario Cuatro","userfour@user.com",NULL,NULL,0),(5,5,"Usuario Cinco","userfive@user.com",NULL,NULL,1),(6,6,"Usuario Seis","usersix@user.com",NULL,NULL,0),(7,7,"Usuario Siete","userseven@user.com",NULL,NULL,1),(8,8,"Usuario Ocho","usereight@user.com",NULL,NULL,0),(9,9,"Usuario Nueve","usernine@user.com",NULL,NULL,0),(10,10,"Usuario Diez","userten@user.com",NULL,NULL,1);

INSERT INTO categories (category_name)
VALUES ("Música"),("Referencias a series"),("Recetas"),("Colores"),("Agenda de Contactos"),("Usuario y Pass"),("Sueños"),("Gran DT"),("Análisis de mercado"),("Tutoriales")