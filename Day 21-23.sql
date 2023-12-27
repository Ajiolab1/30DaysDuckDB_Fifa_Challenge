-- Survival based on Cabin Level
WITH CabinData AS ( SELECT Ticket,
    MAX(CASE WHEN Cabin IS NOT NULL THEN SUBSTRING(Cabin FROM 1 FOR 1) END) AS CabinLevel,
    MAX(Survived) AS Survived
  FROM Titanic_train
  GROUP BY Ticket)
SELECT CabinLevel, AVG(Survived) AS SurvivalRate, COUNT(*) AS PassengerCount FROM CabinData
GROUP BY CabinLevel
ORDER BY CabinLevel;



-- Categorize passengers into solo travelers, those traveling with a family, and those in a mixed group
SELECT Ticket, SUBSTRING(Name FROM 1 FOR POSITION(',' IN Name) - 1) AS Surname,
  CASE
    WHEN COUNT(*) OVER (PARTITION BY Ticket) = 1 THEN 'Solo Traveler'
    WHEN COUNT(*) OVER (PARTITION BY SUBSTRING(Name FROM 1 FOR POSITION(',' IN Name) - 1)) > 1 THEN 'Family Traveler'
    ELSE 'Mixed Group'
  END AS TravelGroup
FROM Titanic_train;



-- Determine family size for each passenger
WITH FamilySizeMapping AS (
  SELECT Ticket,
    SUBSTRING(Name FROM 1 FOR POSITION(',' IN Name) - 1) AS Surname, SibSp, Parch,
    MAX(SibSp + Parch + 1) OVER (PARTITION BY Ticket, SUBSTRING(Name FROM 1 FOR POSITION(',' IN Name) - 1)) AS MaxFamilySize
  FROM
    Titanic_train
)
SELECT Ticket, Surname, SibSp + Parch + 1 AS MaxFamilySize
FROM FamilySizeMapping;
