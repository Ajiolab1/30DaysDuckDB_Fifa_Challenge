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
- Create a table that lists the top players based on their "OVA" (overall rating) in descending order.
- Allow users to filter by a specific club to see its top-rated players.

Interactive Dashboard:
- Combine the visualizations from Tasks 4 to 7 in a single Power BI dashboard. Add slicers, filters, and drill-through actions to make the dashboard interactive.Include a summary or insights section to describe key findings.

**Day 13-14**

For the day 13-14, we were tasked with reading a book titled "DuckDB in Action". The book "DuckDB in Action" is a comprehensive guide that walks readers through the powerful capabilities of DuckDB, an embedded analytics database designed for efficient data processing and querying.

**Day 15-16**

Building on the previous assignment, additional materials, including PDFs and videos covering advanced SQL, were provided. In essence, the week was dedicated to immersive learning and revisiting key concepts. For the upcoming week, a new dataset named the Titanic dataset was assigned for loading into DuckDB. This dataset comprises three CSV files, namely gender submission, train, and test CSV. Our focus in the next week will revolve around analyzing these three datasets.

### Week 3 Challenge:

**Day 17-19**

We started week 3 with a new challenge to analyze Titanic dataset. See the tasks below;

1: Perform an analysis of survival rates based on fare in the Titanic dataset. Utilize the ntile window function to evenly bucket passengers into 6 bins. Calculate statistics for each bin, including survival rates. Examine if there is a correlation between fare amounts and survival. Note any inconsistencies or noise in the fare column and present your findings.

2: Conduct an analysis of survival rates based on sex in the Titanic dataset. Calculate the percentage of passengers who survived versus those who did not survive, focusing on the distinction between males and females. Express the survival rates and highlight any significant differences in survival ratios between genders. (use subqueries for higher marks)

3: Explore the relationship between survival and age in the Titanic dataset. Calculate the survival rate for different age groups, providing insights into how age correlates with the likelihood of survival. Consider any notable patterns or trends in survival based on age.

To access the SQL queries for Day 17 to 19: [Click here](https://github.com/Ajiolab1/30DaysDuckDB_Fifa_Challenge/blob/main/Day%2017-19.sql)


**Day 19-20**

Day 19 to 20 is all about understanding Titles and Survival Rates from the Titanic dataset. The aim is to explore the relationship between passenger titles and their survival rates.

1a. Identify unique titles in the dataset.

b. Consolidate infrequent titles into broader categories (e.g., Mr, Mrs, Miss, Master).

c. Calculate and analyze survival rates for each title grouping.

2:  Calculate the survival based on being a woman or a child. This will evaluate the insights gained from a binary feature flagging passengers as women/children or adult men.

To access the SQL queries for Day 19 to 20:[Click here](https://github.com/Ajiolab1/30DaysDuckDB_Fifa_Challenge/blob/main/Day%2019-20.sql)


**Day 20-23**

For Day 20 to 23, the goal is to pick insigts from the Name, Ticket, Cabin, SibSp and Parch columns in correlation with the survival rates.

1: Survival based on Cabin Level- Write an SQL query to display the number of passengers, their survival rate, and the cabin level they belong to. The assumption here is that the same ticket number defines passengers traveling together. Please consider this assumption while formulating your query.

2: Solo Travelers, Family Travelers, and Mix Group- Using SQL, categorize passengers into solo travelers, those traveling with a family, and those in a mixed group. The assumption for this task is based on ticket number and surname extracted from the original Name feature. If an individual is the only passenger attached to a ticket, consider them a solo traveler. Please assume that families may have other members on different tickets.

3: Family Size Calculation- Write an SQL query to determine the family size for each passenger. The assumption for family size calculation is to add SibSp, ParCh, and the current passenger (+1). However, this is determined at the maximum family size based on ticket number and surname. Assume that families traveled together on the same ticket. Use a mapping SQL subquery to match the sum of SibSp, ParCh, and the current passenger with the family size, considering the same ticket number and surname.

Assumption Metrics:

Task 1: Same ticket number defines passengers traveling together.
Task 2: Solo travelers if the individual is the only passenger attached to a ticket.
Task 3: Family size is calculated by adding SibSp, ParCh, and the current passenger (+1) but determined at the maximum family size based on ticket number and surname.

To access the SQL queries for Day 20 to 23:[Click here](https://github.com/Ajiolab1/30DaysDuckDB_Fifa_Challenge/blob/main/Day%2019-20.sql)


