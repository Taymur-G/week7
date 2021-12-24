-- UPDATE movies SET actor='Test' WHERE movie_id=1

DROP TABLE IF EXISTS jobs_history, employee_detail, laptop_detail, current_job_detail, Actor, Movies;

CREATE TABLE IF NOT EXISTS Actor(
id INT NOT NULL UNIQUE AUTO_INCREMENT,
Actor VARCHAR(255)
);

INSERT INTO Actor(actor) VALUE("Tobey Maguire");
INSERT INTO Actor(actor) VALUE("Dwayne Johnson");
INSERT INTO Actor(actor) VALUE("Vin Diesel");
INSERT INTO Actor(actor) VALUE("Tom Holland");

SELECT * FROM Actor;

