use netflix_eda;

SET GLOBAL local_infile = 1;

CREATE TABLE netflix_cleaned (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(500),
    cast_members TEXT,
    country VARCHAR(200),
    date_added_raw VARCHAR(20),
    month_added INT,
    year_added INT,
    release_year INT,
    rating VARCHAR(20),
    duration_int INT,
    duration_type VARCHAR(20),
    listed_in VARCHAR(500),
    description TEXT
);

LOAD DATA LOCAL INFILE 'C:/Users/NEW/Desktop/Netflix_Cleaned.csv'
INTO TABLE netflix_cleaned
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

set sql_safe_updates=0;

UPDATE netflix_cleaned
SET date_added = STR_TO_DATE(nullif(trim(date_added_raw),''), '%d-%m-%Y');

SELECT show_id, title, date_added_raw, date_added, month_added, year_added 
FROM netflix_cleaned LIMIT 5;

select count(*) from netflix_cleaned;

-- 1. Movies vs TV Shows
SELECT type, COUNT(*) AS total 
FROM netflix_cleaned 
GROUP BY type;

-- 2. Content added by year
SELECT year_added, COUNT(*) AS total 
FROM netflix_cleaned 
GROUP BY year_added 
ORDER BY year_added;

-- 3. Top 10 countries
SELECT country, COUNT(*) AS total 
FROM netflix_cleaned 
GROUP BY country 
ORDER BY total DESC 
LIMIT 10;

-- 4. Most common ratings
SELECT rating, COUNT(*) AS total 
FROM netflix_cleaned 
GROUP BY rating 
ORDER BY total DESC;

-- 5. Average movie duration
SELECT AVG(duration_int) AS avg_duration 
FROM netflix_cleaned 
WHERE duration_type LIKE '%min%';
