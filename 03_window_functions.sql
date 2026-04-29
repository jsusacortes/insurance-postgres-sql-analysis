--WINDOW FUNCTIONS FIRST GROUPING BY REGION
SELECT id, age, region, charges, 
to_char (AVG(charges) OVER (PARTITION BY region), '$99999') AS average
FROM insurance;

"WINDOW FUNCTIONS SECOND GROUPING BY REGION AND RANK"
SELECT id, age, region, charges, 
to_char (AVG(charges) OVER (PARTITION BY region), '$99999') AS average,
RANK() OVER (PARTITION BY region ORDER BY charges DESC) AS rank
FROM insurance
WHERE region = 'northwest';

--TOP 10% HIGHEST COST
WITH top_insurance AS(
SELECT id, age, region, charges, 
to_char (AVG(charges) OVER (PARTITION BY region), '$99999') AS average,
RANK() OVER (PARTITION BY region ORDER BY charges DESC) AS rank,
NTILE(10) OVER (ORDER BY charges DESC) AS top_10
FROM insurance
)
SELECT * FROM top_insurance
WHERE top_10 = 1
;


