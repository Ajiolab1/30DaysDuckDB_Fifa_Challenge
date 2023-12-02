--Loaidng the Titanic dataset from my PC
SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\gender_submission.csv");
SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\train.csv");
SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\test.csv");

--Creating a table for the the gender submission, train and test dataset
CREATE Table Titanic_gender_submission AS SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\gender_submission.csv");
CREATE Table Titanic_Train AS SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\train.csv");
CREATE Table Titanic_Test AS SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\test.csv");

--Perform an analysis of survival rates based on fare in the Titanic dataset. Utilize the ntile window function to evenly bucket passengers into 6 bins. Calculate statistics for each bin, including survival rates

SELECT FareBin, AVG(Survived) AS SurvivalRate, COUNT(*) AS PassengerCount 
FROM (SELECT Fare, Survived, NTILE(6) OVER (ORDER BY Fare) AS FareBin FROM Titanic_train
WHERE Fare IS NOT NULL) AS BinnedData
GROUP BY FareBin
ORDER BY FareBin;

--Conduct an analysis of survival rates based on sex in the Titanic dataset. Calculate the percentage of passengers who survived versus those who did not survive, focusing on the distinction between males and females. Express the survival rates and highlight any significant differences in survival ratios between genders

SELECT Sex, AVG(Survived) AS SurvivalRate, 100 * AVG(Survived) AS SurvivalPercentage, COUNT(*) AS PassengerCount
FROM ( SELECT Sex, Survived FROM titanic_train) AS SexData
GROUP BY Sex
ORDER BY SurvivalRate DESC, Sex;

--Explore the relationship between survival and age in the Titanic dataset. Calculate the survival rate for different age groups.

SELECT CASE
    WHEN Age < 18 THEN 'Under 18'
    WHEN Age >= 18 AND Age < 35 THEN '18-34'
    WHEN Age >= 35 AND Age < 50 THEN '35-49'
    WHEN Age >= 50 THEN '50 and above'
    ELSE 'Unknown'
  END AS AgeGroup, AVG(Survived) AS SurvivalRate, COUNT(*) AS PassengerCount FROM Titanic_train
GROUP BY AgeGroup
ORDER BY SurvivalRate DESC, AgeGroup;

