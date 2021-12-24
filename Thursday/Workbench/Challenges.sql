DROP TABLE IF EXISTS employee_detail, jobs_history, laptop_detail, current_job_detail;

CREATE TABLE IF NOT EXISTS employee_detail (
employee_id INT,
name VARCHAR(255),
date_of_birth INT,
gender VARCHAR(1)
);

INSERT INTO employee_detail VALUES
(1000,"Bob",20000304,"M"),
(1001,"Joe",19740310,"M"),
(1002,"Adam",19640312,"M"),
(1003,"Debra",19910306,"F"),
(1004,"Charlotte",19870307,"F"),
(1005,"Katie",19960304,"F"),
(1006,"Sam",19620313,"F"),
(1007,"Ashley",19810308,"U"),
(1008,"Robert",19680311,"M"),
(1009,"Usman",19850307,"M"),
(1010,"Andrea",19980304,"F"),
(1011,"Vaskor",19680311,"M"),
(1012,"Catherine",19890306,"F"),
(1013,"Graham",19660312,"F"),
(1014,"Christopher",19840307,"M"),
(1015,"Laura",19780309,"F"),
(1016,"Tanya",19940305,"U"),
(1017,"Rachael",19910306,"F");

CREATE TABLE IF NOT EXISTS laptop_detail (
laptop_id INT,
os VARCHAR(255),
date_of_manufacture INT
);

INSERT INTO laptop_detail VALUES
(9000,"Mac",20171024),
(9001,"Ubuntu",20161125),
(9002,"Windows",20180511),
(9003,"Mac",20160618),
(9004,"Mac",20170812),
(9005,"Windows",20180401);

CREATE TABLE IF NOT EXISTS jobs_history (
employee_id INT,
job_title VARCHAR(255),
date_start INT,
date_end INT
);

INSERT INTO jobs_history VALUES
(1000,"Apprentice Developer",20190103,20991231),
(1001,"Tech Lead",20151212,20991231),
(1002,"Developer",20120503,20991231),
(1003,"Developer",20180716,20991231),
(1004,"Apprentice Developer",20171025,20991231),
(1005,"Product Lead",20161003,20991231),
(1006,"Delivery Lead",20110223,20991231),
(1007,"Developer",20180507,20991231),
(1008,"Marketing Lead",20180816,20991231),
(1009,"Developer",20150725,20991231),
(1010,"Developer",20111215,20991231),
(1011,"Tech Lead",20180226,20991231),
(1012,"Product Lead",20180607,20991231),
(1013,"Delivery Lead",20150516,20991231),
(1014,"Marketing Lead",20111006,20991231),
(1015,"Developer",20171218,20991231),
(1016,"Developer",20180329,20991231),
(1017,"Developer",20150307,20991231),
(1001,"Developer",20051128,20151211),
(1002,"Apprentice Developer",20100831,20120502),
(1001,"Apprentice Developer",20050828,20051127),
(1004,"Product Lead",20151228,20171024),
(1009,"Apprentice Developer",20140310,20150724),
(1010,"Apprentice Developer",20110330,20111214),
(1011,"Apprentice Developer",20170405,20180225),
(1016,"Apprentice Developer",20161207,20180328);

CREATE TABLE IF NOT EXISTS current_job_detail (
employee_id INT,
job_title VARCHAR(255),
salary INT,
laptop_id INT
);

INSERT INTO current_job_detail VALUES
(1000,"Apprentice Developer",16000,9000),
(1001,"Tech Lead",61000,9001),
(1002,"Developer",35000,9003),
(1003,"Developer",37000,9001),
(1004,"Apprentice Developer",16500,9000),
(1005,"Product Lead",53000,9001),
(1006,"Delivery Lead",52000,9000),
(1007,"Developer",48000,9000),
(1008,"Marketing Lead",75000,9003),
(1009,"Developer",38500,9001),
(1010,"Developer",39500,9004),
(1011,"Tech Lead",61000,9000),
(1012,"Product Lead",49500,9004),
(1013,"Delivery Lead",46500,9005),
(1014,"Marketing Lead",61000,9000),
(1015,"Developer",41000,9000),
(1016,"Developer",42500,9005),
(1017,"Developer",45500,9000);

-- Challenge 1

-- SELECT COUNT(*) AS 'Employees' FROM employee_detail;

-- Challenge 2

-- SELECT * FROM current_job_detail ORDER BY salary DESC LIMIT 1;

-- Challenge 3

-- SELECT COUNT(*) AS 'Developers' FROM current_job_detail WHERE job_title LIKE "%Developer%";

-- Challenge 4

-- SELECT COUNT(job_title='Developer'),
-- CASE

-- WHEN salary >= 10000 AND salary <= 20000 THEN '10k - 20k'
-- WHEN salary >= 21000 AND salary <= 30000 THEN '21k - 30k'
-- WHEN salary >= 31000 AND salary <= 40000 THEN '31k - 40k'
-- WHEN salary >= 41000 AND salary <= 50000 THEN '41k - 50k'
-- WHEN salary >= 51000 AND salary <= 60000 THEN '51k - 60k'
-- WHEN salary >= 61000 AND salary <= 70000 THEN '61k - 70k'
-- WHEN salary >= 71000 AND salary <= 80000 THEN '71k - 80k'

-- END AS wage_brackets
-- FROM current_job_detail
-- GROUP BY wage_brackets
-- ORDER BY wage_brackets ASC;

-- Challenge 5

SELECT e.employee_id, name, job_title, salary 
FROM employee_detail e
INNER JOIN current_job_detail c
ON e.employee_id = c.employee_id

WHERE job_title NOT LIKE '%Developer%';