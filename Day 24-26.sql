--What was the survival rate of males in the third passenger class including women and children
WITH Malesurvivors AS (
  SELECT *,
    CASE
      WHEN Age < 18 AND Sex = 'female' THEN 'Children'
      WHEN Age < 18 AND Sex = 'male' THEN 'Children'
      WHEN Age >= 18 AND Sex = 'male' THEN 'AdultMale'
      ELSE 'AdultFemale'
    END AS Age_Gender_category
  FROM Titanic_train
)
SELECT
 Age_Gender_category,
  COUNT(*) AS TotalPassengers,
  SUM(survived) AS SurvivedCount,
  SUM(Survived)/ COUNT(*) * 100.00 AS SurvivalRate
FROM Malesurvivors
WHERE
  Pclass = 3
  GROUP BY
  Age_Gender_category;

-- Percentage of survivors based on Sex, Embarked, and Pclass
SELECT
  Sex,
  Embarked,
  Pclass,
  COUNT(*) AS TotalPassengers,
  AVG(Survived) * 100 AS PercentageSurvived
FROM
  titanic_train
GROUP BY
  Sex, Embarked, Pclass
ORDER BY
  Sex, Embarked, Pclass;
 
 -- Analyzing chances of survival for a specific individual
SELECT
  AVG(Survived) AS SurvivalRate
FROM
  titanic_train
WHERE
  Sex = 'male'
  AND Age = 36
  AND Pclass = 2
  AND Embarked = 'C';
