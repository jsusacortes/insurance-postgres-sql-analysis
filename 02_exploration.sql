
--QUERY FOR AVG CHARGES PER REGION
SELECT region, to_char(ROUND(AVG(charges)), '$99999') AS average_charges FROM insurance
GROUP BY region
ORDER BY average_charges ASC;

--QUERY AVG CHARGES FOR SMOKERS
SELECT smoker, to_char(ROUND(AVG(charges)), '$99999') AS average_charges FROM insurance
GROUP BY smoker
ORDER BY average_charges ASC;

--QUERY AVG CHARGES PER BMI GROUP
SELECT to_char (ROUND(AVG(charges)), '$99999') AS average_charges, 
CASE 
	WHEN insurance.bmi < 18.5 THEN 'Underweight'
	WHEN insurance.bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
	WHEN insurance.bmi BETWEEN 24.9 AND 30 THEN 'Overweight'
ELSE 'Obese'
END AS bmi
FROM insurance
GROUP BY CASE 
	WHEN insurance.bmi < 18.5 THEN 'Underweight'
	WHEN insurance.bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
	WHEN insurance.bmi BETWEEN 24.9 AND 30 THEN 'Overweight'
ELSE 'Obese'
END
;

--QUERY AVG CHARGES BY AGE GROUP
SELECT to_char (ROUND(AVG(charges)), '$99999') AS average_charges, 
CASE 
	WHEN insurance.age BETWEEN 18 AND 30 THEN 'Age between 18 and 30'
	WHEN insurance.age BETWEEN 31 AND 45 THEN 'Age between 31 and 45'
ELSE 'Older adults' 
END AS Age_group
FROM insurance
GROUP BY CASE 
	WHEN insurance.age BETWEEN 18 AND 30 THEN 'Age between 18 and 30'
	WHEN insurance.age BETWEEN 31 AND 45 THEN 'Age between 31 and 45'
ELSE 'Older adults' 
END
;