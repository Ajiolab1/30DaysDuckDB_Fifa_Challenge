# 30DaysDuckDB_Fifa_Challenge
A 30 days challenge on how to use DuckDB for data analysis

**Week 1 Challenge:** 

_**Day 1 - Getting Started**_

Create an account with Motherduck: Join the Motherduck community and sign up for an account on Motherduck:https://app.motherduck.com/?auth_flow=signup.

Install DuckDB: Get DuckDB up and running on your local machine. Follow the installation instructions for your specific operating system here: DuckDB Installation Guide: https://duckdb.org/docs/installation.

Set up Power BI: Install Power BI on your computer and configure it. You can download Power BI from the official website here.

_**Day 2-6**_
1. Database Creation - Create a DuckDB database named "challenge."
2. Data Loading - Load the provided CSV files into the DuckDB database. Ensure they are clean and ready for analysis.
3. Database Access- Access the DuckDB database on Motherduck, our collaborative platform.
4. Converting Height and Weight to Numerical Form:
 For the 'Height' column, make sure to extract the numerical value (e.g., 6'0" becomes 6).
 For the 'Weight' column, remove the "lbs" and convert it to a numerical format.
5. Converting 'Value', 'Wage', and 'Release Clause' to Numbers:
6. The 'Value' column has values like '€100M' (which means 100 million) and '€10K' (which means 10,000). Strip the symbols ('€', 'M', 'K') and convert the values to actual numbers accordingly.
7. The 'Wage' column also uses 'K' (e.g., '€100K'), which should be converted to thousands.
8. The 'Release Clause' column follows the same pattern with 'M' and 'K'.
Handling 'Star' Characters:
9. Remove the 'star' character from columns where it appears and make sure the columns are in numerical format.

**Week 2 Challenge:**

_**Day 7-9**_

1. Identify players who possess high value but receive relatively low wages.
2. Determine the count of players available in the dataset for each position.
3. Find out which club has the largest representation of players in the dataset.
4. List the top 10 players with the highest OVA and POT values.
5. Find players with the highest OVA and POT within each club.
6. Calculate the average OVA for players under 25 years old and over 30 years old in each club.
7. List the players who have the same age within each club.
8. Find the player with the highest POT for each nationality
9. Rank players by their OVA in descending order within each club




