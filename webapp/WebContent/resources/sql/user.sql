--<ScriptOptions statementTerminator=";"/>
CREATE TABLE USER(
id varchar(10) primary key, 
password varchar(10) not null,  
name varchar(10) not null,
gender varchar(4),
birth varchar(10),
mail varchar(30),
phone varchar(20),
register_day varchar(50)
);

