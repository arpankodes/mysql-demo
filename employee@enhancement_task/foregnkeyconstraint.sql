USE mycompany;
SHOW TABLES;

DROP TABLE project;
SHOW TABLES;

-- adding a foregn key while referring to emp_id from emp_info table
CREATE TABLE project (
	emp_id INT ,
	project VARCHAR(60),
    FOREIGN KEY (emp_id) REFERENCES emp_info(emp_id));

INSERT INTO project
VALUES
	(1, 'project1'),
    (2, 'project1'),
    (3, 'project2'),
    (4, 'project2');

SELECT * FROM project;
    
