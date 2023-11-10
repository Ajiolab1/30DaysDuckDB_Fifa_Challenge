-- Reading our dataset into dbeaver
SELECT * FROM read_csv_auto('C:\Users\Data Science Nigeria\Desktop\Data Engineering\fifa21_raw_data.csv');

-- Creating a table called Fifa_challenge
CREATE Table Fifa_challenge AS SELECT * FROM read_csv_auto('C:\Users\Data Science Nigeria\Desktop\Data Engineering\fifa21_raw_data.csv');

-- Converting the Height column into numerical values
UPDATE Fifa_challenge SET Height = CASE
    WHEN Height LIKE '%"' THEN CAST(SUBSTR(Height, 1, POSITION('''' IN Height) - 1) AS INTEGER)
    WHEN Height LIKE '%cm' THEN CAST(SUBSTR(Height, 1, POSITION('cm' IN Height) - 1) AS INTEGER)
    ELSE NULL  
END;

-- Converting the Weight column into numerical values and removing the units
UPDATE Fifa_challenge SET Weight = CASE
    WHEN Weight LIKE '%lbs' THEN CAST(SUBSTR(Weight, 1, LENGTH(Weight) - 3) AS INTEGER)
END

-- Removing the units from the Value column and converting into numerical values
UPDATE Fifa_challenge SET Value = CASE
        WHEN RIGHT(Value, 1) = 'M' THEN CAST(REPLACE(REPLACE(Value, '€', ''), 'M', '') AS DECIMAL) * 1000000
        WHEN RIGHT(Value, 1) = 'K' THEN CAST(REPLACE(REPLACE(Value, '€', ''), 'K', '') AS DECIMAL) * 1000
        ELSE CAST(REPLACE(Value, '€', '') AS DECIMAL)
END,

-- Removing the units from the Wage column and converting into numerical values
UPDATE Fifa_challenge SET Wage = CASE
        WHEN RIGHT(Wage, 1) = 'M' THEN CAST(REPLACE(REPLACE(Wage, '€', ''), 'M', '') AS DECIMAL) * 1000000
        WHEN RIGHT(Wage, 1) = 'K' THEN CAST(REPLACE(REPLACE(Wage, '€', ''), 'K', '') AS DECIMAL) * 1000
        ELSE CAST(REPLACE(Wage, '€', '') AS DECIMAL)
END,

-- Removing the units from the Release Clause column and converting into numerical values
UPDATE Fifa_challenge SET "Release Clause" = CASE
        WHEN RIGHT("Release Clause", 1) = 'M' THEN CAST(REPLACE(REPLACE("Release Clause", '€', ''), 'M', '') AS DECIMAL) * 1000000
        WHEN RIGHT("Release Clause", 1) = 'K' THEN CAST(REPLACE(REPLACE("Release Clause", '€', ''), 'K', '') AS DECIMAL) * 1000
        ELSE CAST(REPLACE("Release Clause", '€', '') AS DECIMAL)
END;

-- Removing the * sign from the SM column and converting into numerical values
UPDATE Fifa_challenge SET SM = CASE
        WHEN SM LIKE '% * %' THEN CAST(REPLACE(SM, ' * ', '  ') AS DECIMAL)
        ELSE CAST(REPLACE(REGEXP_REPLACE(SM, '[^0-9.]', '', 'g'), '.', '') AS DECIMAL)
END,

-- Removing the * sign from the IR column and converting into numerical values
UPDATE Fifa_challenge SET IR = CASE
        WHEN IR LIKE '% * %' THEN CAST(REPLACE(IR, ' * ', '  ') AS DECIMAL)
        ELSE CAST(REPLACE(REGEXP_REPLACE(IR, '[^0-9.]', '', 'g'), '.', '') AS DECIMAL)
END,

-- Removing the * sign from the W/F column and converting into numerical values
UPDATE Fifa_challenge SET "W/F" = CASE
        WHEN "W/F" LIKE '% * %' THEN CAST(REPLACE("W/F", ' * ', '  ') AS DECIMAL)
        ELSE CAST(REPLACE(REGEXP_REPLACE("W/F", '[^0-9.]', '', 'g'), '.', '') AS DECIMAL)
END,

--ALL THE CODES BELOW ARE FOR THE DATASET FIFA_CHALLENG2
SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\fifa21 raw data v2.csv");

CREATE Table Fifa_challenge2 AS SELECT * FROM read_csv_auto("C:\Users\Data Science Nigeria\Desktop\Data Engineering\fifa21 raw data v2.csv");

UPDATE Fifa_challenge2 SET Height = CASE
    WHEN Height LIKE '%"' THEN CAST(SUBSTR(Height, 1, POSITION('''' IN Height) - 1) AS INTEGER)
    WHEN Height LIKE '%cm' THEN CAST(SUBSTR(Height, 1, POSITION('cm' IN Height) - 1) AS INTEGER)
    ELSE NULL  
END;
UPDATE Fifa_challenge2 SET Weight = CASE
    WHEN Weight LIKE '%kg' THEN CAST(SUBSTR(Weight, 1, LENGTH(Weight) - 2) AS INTEGER)
END;

UPDATE Fifa_challenge2 SET Value = CASE
        WHEN RIGHT(Value, 1) = 'M' THEN
            CAST(REPLACE(REPLACE(Value, '€', ''), 'M', '')::DECIMAL * 1000000 AS INTEGER)
        WHEN RIGHT(Value, 1) = 'K' THEN
            CAST(REPLACE(REPLACE(Value, '€', ''), 'K', '')::DECIMAL * 1000 AS INTEGER)
        ELSE
            CAST(REPLACE(Value, '€', '')::DECIMAL AS INTEGER)
END,
    
UPDATE Fifa_challenge2 SET Wage = CASE
        WHEN RIGHT(Wage, 1) = 'M' THEN
            CAST(REPLACE(REPLACE(Wage, '€', ''), 'M', '')::DECIMAL * 1000000 AS INTEGER)
        WHEN RIGHT(Wage, 1) = 'K' THEN
            CAST(REPLACE(REPLACE(Wage, '€', ''), 'K', '')::DECIMAL * 1000 AS INTEGER)
        ELSE
            CAST(REPLACE(Wage, '€', '')::DECIMAL AS INTEGER)
END,

UPDATE Fifa_challenge2 SET "Release Clause" = CASE
        WHEN RIGHT("Release Clause", 1) = 'M' THEN
            CAST(REPLACE(REPLACE("Release Clause", '€', ''), 'M', '')::DECIMAL * 1000000 AS INTEGER)
        WHEN RIGHT("Release Clause", 1) = 'K' THEN
            CAST(REPLACE(REPLACE("Release Clause", '€', ''), 'K', '')::DECIMAL * 1000 AS INTEGER)
        ELSE
            CAST(REPLACE("Release Clause", '€', '')::DECIMAL AS INTEGER)
END;

UPDATE Fifa_challenge2 SET SM = CASE
        WHEN SM LIKE '% * %' THEN CAST(REPLACE(SM, ' * ', '  ') AS DECIMAL)
        ELSE CAST(REPLACE(REGEXP_REPLACE(SM, '[^0-9.]', '', 'g'), '.', '') AS DECIMAL)
END,
 
UPDATE Fifa_challenge2 SET IR = CASE
        WHEN IR LIKE '% * %' THEN CAST(REPLACE(IR, ' * ', '  ') AS DECIMAL)
        ELSE CAST(REPLACE(REGEXP_REPLACE(IR, '[^0-9.]', '', 'g'), '.', '') AS DECIMAL)
END,

UPDATE Fifa_challenge2 SET "W/F" = CASE
        WHEN "W/F" LIKE '% * %' THEN CAST(REPLACE("W/F", ' * ', '  ') AS DECIMAL)
        ELSE CAST(REPLACE(REGEXP_REPLACE("W/F", '[^0-9.]', '', 'g'), '.', '') AS DECIMAL)
END,
