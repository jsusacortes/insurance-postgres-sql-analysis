# Insurance SQL analysis - personal project

## Source
Dataset: Medical Cost Personal Datasets — Kaggle
https://www.kaggle.com/datasets/mirichoi0218/insurance

## Dataset Overview
1350 observations, 7 features. Each row represents a medical
relationship snapshot: age, sex, BMI, number of children, whether smoker or not, region, and charges.

## SQL concepts used 
GROUP BY, CASE WHEN, Window Functions, CTEs, NTILE

## Key Insights

- The average charges by region were Southwest $12,347, Northwest $12,418, Northeast $13,406, Southeast $14,735, with the highest being the **Southeast** region.
- The average smoker is approximately ***4 times** more expensive than a nonsmoker.
- People with a BMI higher than 30 or in the "Obese" category **cost 50% more** than normal people
- People over the age of 45 cost almost **2 times more** than people younger than 31

