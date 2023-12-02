# 30DaysDuckDB_Fifa_Challenge
![](fftg_web_banner-02_0.png)

This is a 30 days challenge on how to use DuckDB for data analysis

### Week 1 Challenge:

**Day 1 - Getting Started**

We are to create an account with Motherduck: Join the Motherduck community and sign up for an account on Motherduck:https://app.motherduck.com/?auth_flow=signup.

Install DuckDB: Get DuckDB up and running on your local machine. Follow the installation instructions for your specific operating system here: DuckDB Installation Guide: https://duckdb.org/docs/installation.

Set up Power BI: Install Power BI on your computer and configure it. You can download Power BI from the official website here: https://powerbi.microsoft.com/en-us/downloads/

**Day 2-6**

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
    
To access the SQL queries for Day 2 to 6: [Click here](https://github.com/Ajiolab1/30DaysDuckDB_Fifa_Challenge/blob/main/Day%202-6.sql)

### Week 2 Challenge:

**Day 7-9**
1. Identify players who possess high value but receive relatively low wages.
2. Determine the count of players available in the dataset for each position.
3. Find out which club has the largest representation of players in the dataset.
4. List the top 10 players with the highest OVA and POT values.
5. Find players with the highest OVA and POT within each club.
6. Calculate the average OVA for players under 25 years old and over 30 years old in each club.
7. List the players who have the same age within each club.
8. Find the player with the highest POT for each nationality
9. Rank players by their OVA in descending order within each club
    
To access the SQL queries for Day 7 to 9: [Click here](https://github.com/Ajiolab1/30DaysDuckDB_Fifa_Challenge/blob/main/Day%207-9.sql)

**Day 10**
As part of the 30DaysDuckDBchallenge, for the day 10 we were tasked with undergoing a refresher course on how to use GitHub, create a repository, and add our SQL files for project documentation and reader easy accessibility. [Click here to see my reflections after completing the task](https://www.linkedin.com/posts/ajiola-oluwabukunmi_30daysduckdbchallenge-activity-7128844753659441152-tbW8?utm_source=share&utm_medium=member_desktop)

**Day 11-12: Power BI Visualization Challenge**

We were tasked to create a compelling visualizations and design an interactive dashboard based on two provided datasets(Fifa Challenge). 

Instructions:

- Data Import: In Power BI, import the two pre-cleaned datasets from DuckDB. Verify that the data has been imported correctly you mostly have to do this with CSV.
- Data Transformation: Perform any necessary data cleaning and transformation within Power BI if you didn't do this early but if you did the first data cleaning task then ignore this one. Ensure that the data is ready for visualization.
-Data Join: Combine the two datasets using a common column (e.g., "Name" or "LongName"). Choose the type of join that's most appropriate for your analysis.

Task 1: Nationality Distribution:
- Create a bar chart that displays the distribution of players' nationalities.
- Allow users to filter by nationality to see players from specific countries.
  
Task 2: Age vs. Potential:
- Build a scatter plot that explores the relationship between a player's "Age" and "POT" (potential).
- Add a trendline to visualize the trend between age and potential.
  
Task 3: Player Position Analysis:
- Generate a pie chart showing the distribution of player positions ("Positions" column).
- Make the chart interactive so users can select a position to view players with that role.

Task 4: Top Players by Overall Rating:
-Create a table that lists the top players based on their "OVA" (overall rating) in descending order.
-Allow users to filter by a specific club to see its top-rated players.

Interactive Dashboard:
- Combine the visualizations from Tasks 4 to 7 in a single Power BI dashboard. Add slicers, filters, and drill-through actions to make the dashboard interactive.Include a summary or insights section to describe key findings.


### Week 3 Challenge:
For week 3 cha
