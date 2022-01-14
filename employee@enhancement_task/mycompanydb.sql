CREATE DATABASE IF NOT EXISTS mycompany;

USE mycompany;
DROP TABLE project ;
CREATE TABLE emp_info (
	emp_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    joining_year YEAR ,
    ctc FLOAT,
    rating FLOAT,
    PRIMARY KEY(emp_id));

CREATE TABLE project (
	emp_id INT,
	project VARCHAR(60));

SHOW TABLES IN mycompany;

INSERT INTO emp_info (name, joining_year, ctc, rating)
VALUES ('Shivansh', '2017', 12.4, 8.6);
INSERT INTO emp_info (name, joining_year, ctc, rating)
VALUES ('Pradyuman', '2017', 10.8, 8.3);
INSERT INTO emp_info (name, joining_year, ctc, rating)
VALUES ('Nitesh', '2018', 8, 7.2);
INSERT INTO emp_info (name, joining_year, ctc, rating)
VALUES ('Pushpinder', '2019', 8, 7.7);

SELECT * FROM emp_info;

INSERT INTO project
VALUES
	(1, 'project1'),
    (2, 'project1'),
    (3, 'project2'),
    (4, 'project2');

SELECT * FROM project;
