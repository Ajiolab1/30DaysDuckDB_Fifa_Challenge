SELECT Name, Value, Wage, Height FROM Fifa_challenge LIMIT 10;
SELECT data_type FROM information_schema.columns WHERE table_name = 'Fifa_challenge' AND column_name = 'Name';

-- Creating a new INT column beacuse the Value column data type is VARCHAR
ALTER TABLE Fifa_challenge ADD NewValue INT;
ALTER TABLE Fifa_challenge ADD NewWage INT;


-- Update the new INT column with the values from the VARCHAR column for Value and wage
UPDATE Fifa_challenge SET NewValue = CAST(Value AS INT);
UPDATE Fifa_challenge SET NewWage = CAST(Wage AS INT);

-- Checking the Average of NewValue and NewWage
SELECT data_type FROM information_schema.columns WHERE table_name = 'Fifa_challenge' AND column_name = 'NewWage';
SELECT AVG(NewValue) FROM Fifa_challenge;
SELECT AVG(NewWage) FROM Fifa_challenge;

--Identifying players who possess high value but receive relatively low wages.
SELECT Name, NewValue, NewWage FROM Fifa_challenge
WHERE NewValue > (SELECT AVG(NewValue) FROM Fifa_challenge) AND  NewWage < (SELECT AVG(NewWage) FROM Fifa_challenge)
ORDER BY NewValue DESC
LIMIT 10;

--Determining the count of players available in the dataset for each position.
SELECT Positions, COUNT(*) as Player_Count_by_position FROM Fifa_challenge
GROUP BY Positions
ORDER BY Player_Count_by_position DESC
LIMIT 20;


SELECT Nationality, COUNT(*) as PlayerCount FROM Fifa_challenge
GROUP BY Nationality
ORDER BY PlayerCount DESC
LIMIT 1;

--List the top 10 players with the highest OVA and POT values.
SELECT Name, ↓OVA, POT FROM Fifa_challenge
ORDER BY ↓OVA AND POT DESC
LIMIT 10;

--Find the player with the highest POT for each nationality
SELECT Name, Nationality, POT
FROM Fifa_challenge AS playerWithHighestPOT
WHERE POT = (
    SELECT MAX(POT)
    FROM Fifa_challenge
    WHERE Nationality = playerWithHighestPOT.Nationality
);

--ALL THE CODES BELOW ARE FOR FIFA_CHALLENGE2

--Find out which club has the largest representation of players in the dataset.
SELECT Club, COUNT(*) as PlayerCount FROM Fifa_challenge2
GROUP BY Club
ORDER BY PlayerCount DESC
LIMIT 1;

SELECT Name, ↓OVA, POT FROM Fifa_challenge2 
ORDER BY ↓OVA DESC
LIMIT 10;

--Find players with the highest OVA and POT within each club.
SELECT Club, 
       MAX(Name) AS PlayerWithHighestOVA, 
       MAX(↓OVA) AS HighestOVA, 
       MAX(POT) AS POTOfHighestOVA
FROM Fifa_challenge2
GROUP BY Club;

--Calculate the average OVA for players under 25 years old and over 30 years old in each club.
SELECT
    Club,
    AVG(CASE WHEN Age < 25 THEN ↓OVA ELSE NULL END) AS AverageOVAUnder25,
    AVG(CASE WHEN Age > 30 THEN ↓OVA ELSE NULL END) AS AverageOVAOver30
FROM
    Fifa_challenge2
GROUP BY Club;

--List the players who have the same age within each club.
SELECT Club, Age, ARRAY_AGG(Name) AS PlayersWithSameAge
FROM Fifa_challenge2
GROUP BY Club, Age
HAVING COUNT(*) > 1;

--Rank players by their OVA in descending order within each club
SELECT Club,Name,↓OVA,
    RANK() OVER (PARTITION BY Club ORDER BY ↓OVA DESC) AS ↓OVARank
FROM Fifa_challenge2
ORDER BY Club, ↓OVARank;