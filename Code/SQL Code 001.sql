-- @block
CREATE DATABASE IF NOT EXISTS University;
USE University;

-- @block
CREATE TABLE IF NOT EXISTS Students (
    student_id int primary key auto_increment,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    gender char(1) not null,
    age int default 18,
    email VARCHAR(50) unique not null,
    phone_number VARCHAR(15) unique not null
);
-- @block
CREATE TABLE IN NOT EXISTS Teachers(
    teacher_id int primary key auto_increment,
    first_name VARCHAR(20) not null,
    last_name VARCHAR(20) not null,
    gender char(1) not null,
    age int default 30,
    salary decimal(5,2) not null default 800,
    email VARCHAR(50) not null unique,
    phone_number VARCHAR(15) not null unique,
    StartDate timestamp default NOW()
);

-- @block
CREATE TABLE if not EXISTS Degrees(
    degree_id int primary key auto_increment,
    student_id int not null,
    advisor_id int not null,
    Database_Systems decimal(4, 2) not null,
    Data_Structures decimal(4,2) not null,
    Math decimal(4,2) not null,
    Cybersecurity decimal(4,2) not null,
    Cload_Computing decimal(4,2) not null ,
    constraint f1 foreign key(student_id) REFERENCES Students(student_id) on delete cascade on update restrict,
    constraint f2 foreign key(advisor_id) REFERENCES Teachers(teacher_id) on delete restrict on update cascade
);

-- @block
INSERT INTO Students (first_name, last_name, gender, age, email, phone_number)
    VALUES
    ('Ali', 'Ahmed', 'M', 18, 'ali.ahmed@gmail.com', '+972555555555'),
    ('Omar', 'Mohammed', 'M', 19, 'omar.mohammed@gmail.com', '+972555555556'),
    ('Fatima', 'Abdullah', 'F', 20, 'fatima.abdullah@gmail.com', '+972555555557'),
    ('Khaled', 'Omar', 'M', 21, 'khaled.omar@gmail.com', '+972555555558'),
    ('Sarah', 'Ali', 'F', 22, 'sara.ali@gmail.com', '+972555555559'),
    ('Ahmed', 'Khaled', 'M', 23, 'ahmed.khaled@gmail.com', '+972555555560'),
    ('Maryam', 'Omar', 'F', 24, 'maryam.omar@gmail.com', '+972555555561'),
    ('Fatima','Salman', 'M', 25, 'fatimasalman@gmail.com', '+972555555562'),
    ('Noura', 'Abdullah', 'F', 26, 'nora.abdullah@gmail.com', '+972555555563'),
    ('Khaled', 'Mohammed', 'M', 27, 'khaled.mohammed@gmail.com', '+972555555564'),
    ('Sarah', 'Salman', 'F', 28, 'sara.salman@gmail.com', '+972555555565');

-- @block
INSERT INTO Teachers (first_name, last_name, gender, age, salary, email, phone_number)
    VALUES
    ('Khaled', 'Zaki', 'M', 35, 750, 'khaled.omar@gmail.com', '+972555555555'),
    ('Maryam', 'Mohammed', 'F', 40, 900, 'maryam.mohammed@gmail.com', '+972555555556'),
    ('Salma', 'Hussain', 'M', 30, 600, 'salmahussain@gmail.com', '+972555555557'),
    ('Fatimah', 'Abdullah', 'F', 35, 850, 'faabdullah@gmail.com', '+972555555559'),
    ('Hamed', 'Qasim', 'M', 40, 999, 'hamedqasim@gmail.com', '+972555555560' );

-- @block
ALTER TABLE Degrees
drop column  Cload_Computing,
add column Network_Infrastructure decimal(4,2) not null,
add  constraint unique_IDs unique(student_id, advisor_id);
