CREATE DATABASE IF NOT EXISTS my_db;

USE my_db;

CREATE TABLE IF NOT EXISTS person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

INSERT INTO person (name, age) VALUES ('Alice', 15), ('Bob', 18);


-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON my_db.* TO 'user'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE school;
USE school;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    grade INT
);

INSERT INTO students (name, grade) VALUES ('Alice', 90), ('Bob', 85);

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON school.* TO 'user'@'%';
FLUSH PRIVILEGES;
