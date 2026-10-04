📊 Netflix Titles - Exploratory Data Analysis (EDA)

📁 About the Dataset
Netflix Movies and TV Shows dataset from Kaggle (by Shivam Bansal), cleaned in Task 1.
- Cleaned file: Netflix_Cleaned.csv
- Total rows analyzed: 8,809
- Loaded into MySQL (netflix_eda schema) for analysis

🛠️ Tools Used
MySQL Workbench (SQL)

🔍 Analysis Approach
Used SQL queries to calculate key statistics, identify trends, and explore patterns across content type, country, rating, and duration.

📈 Key Findings (Insights)

**1. Content Type Split**
Movies dominate the catalog with 6,131 titles (69.6%) compared to 2,676 TV Shows (30.4%). Netflix's library leans heavily toward movies over series.

**2. Top Content-Producing Countries**
The United States leads with 3,210 titles, followed by India (1,008) and the United Kingdom (628). This shows Netflix's strongest content pipelines are concentrated in these three markets.

**3. Most Common Content Ratings**
TV-MA is the most frequent rating (3,207 titles), followed by TV-14 (2,160). This indicates Netflix's catalog skews toward mature and teen audiences rather than younger viewers.

**4. Average Movie Duration**
The average movie runtime is approximately 99.6 minutes, close to a standard theatrical film length.

**5. Content Growth Over Time**
Content additions grew steadily from 2016 onward, with a sharp increase around 2019-2020, reflecting Netflix's aggressive content expansion phase during those years.

🧮 SQL Queries Used
See `netflix_eda_queries.sql` for the full set of queries, including:
- Table creation and data loading
- Content type distribution
- Year-wise content addition trends
- Top 10 countries by content volume
- Rating distribution
- Average movie duration

📂 Files
- netflix_eda_queries.sql - all SQL queries used for this analysis

📝 Note
A small number of rows (13 out of 8,809) had a missing `date_added` value, resulting in a `year_added` of 0 for those rows. This was left as-is since it affects less than 0.2% of the dataset and does not impact the overall findings.
