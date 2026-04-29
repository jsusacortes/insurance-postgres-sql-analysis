--CREATION OF TABLE INSURANCE
CREATE TABLE IF NOT EXISTS 
	insurance (
		id SERIAL PRIMARY KEY,
		age INT,
		sex TEXT,
		bmi DECIMAL,
		num_children INT,
		smoker TEXT,
		region TEXT,
		charges DECIMAL)
;

SELECT * FROM insurance;
