--Loaidng the Titanic dataset from my PC
SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\gender_submission.csv");
SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\train.csv");
SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\test.csv");

--Creating a table for the the gender submission, train and test dataset
CREATE Table Titanic_gender_submission AS SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\gender_submission.csv");
CREATE Table Titanic_Train AS SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\train.csv");
CREATE Table Titanic_Test AS SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\test.csv");


-- Step 1: Identify unique titles in the dataset
SELECT DISTINCT
  SUBSTRING(Name, POSITION(', ' IN Name) + 2, POSITION('. ' IN Name) - POSITION(', ' IN Name) - 1) AS UniqueTitle
FROM
  Titanic_train;
 
 -- Step 2: Consolidate infrequent titles into broader categories
WITH ConsolidatedTitles AS (
  SELECT
    CASE
      WHEN Name LIKE '%Mr.%' THEN 'Mr'
      WHEN Name LIKE '%Mrs.%' THEN 'Mrs'
      WHEN Name LIKE '%Miss.%' THEN 'Miss'
      WHEN Name LIKE '%Master.%' THEN 'Master'
      ELSE 'Other'
    END AS ConsolidatedTitle
  FROM Titanic_train )
SELECT ConsolidatedTitle, COUNT(*) AS PassengerCount FROM ConsolidatedTitles
GROUP BY ConsolidatedTitle;

-- Step 3:Calculate and analyze survival rates for each title grouping
WITH ConsolidatedTitles AS (
  SELECT
    CASE
      WHEN Name LIKE '%Mr.%' THEN 'Mr'
      WHEN Name LIKE '%Mrs.%' THEN 'Mrs'
      WHEN Name LIKE '%Miss.%' THEN 'Miss'
      WHEN Name LIKE '%Master.%' THEN 'Master'
      ELSE 'Other'
    END AS ConsolidatedTitle,
    Survived
  FROM Titanic_train )
SELECT ConsolidatedTitle, AVG(Survived) AS SurvivalRate, COUNT(*) AS PassengerCount FROM ConsolidatedTitles
GROUP BY ConsolidatedTitle
ORDER BY SurvivalRate DESC, ConsolidatedTitle;

-- Calculate survival based on being a woman or a child
WITH WomanChildIndicator AS (
  SELECT
    CASE
      WHEN Sex = 'female' OR Age < 18 THEN 1 -- Woman or Child
      ELSE 0 -- Adult Man
    END AS WomanChild,
    Survived
  FROM Titanic_train)
SELECT WomanChild, AVG(Survived) AS SurvivalRate, COUNT(*) AS PassengerCount FROM WomanChildIndicator
GROUP BY WomanChild;
