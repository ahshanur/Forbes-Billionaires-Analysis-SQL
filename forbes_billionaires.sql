
-- Number of male 
select  count(*) from forbes.billionaires where gender="M";

-- Number of female
select  count(*) from forbes.billionaires where gender="F";

-- number of male and female in a single query
Select count(gender), gender from forbes.billionaires GROUP BY gender

-- number of distinct country billionaires are from
Select count(DISTINCT(country)) as Totol_billionaires, country from forbes.billionaires GROUP BY country order by Totol_billionaires desc

-- List of billionaires whose worth is more than $ 5 billion
SELECT forbes.billionaires.rank, personName, finalWorth from forbes.billionaires WHERE finalWorth>='50000' limit 100

-- List of billionaires whose age is less than 40 years old
SELECT forbes.billionaires.rank, personName, age, finalWorth from forbes.billionaires WHERE age<=40 order by age

-- average worth the billionaires of a country
SELECT AVG(finalWorth) AS average_worth, count(DISTINCT(country)) as Totol_billionaires, country from forbes.billionaires GROUP BY country order by average_worth DESC

-- list of CEOs
select personName, title from forbes.billionaires WHERE title LIKE '%CEO%'

-- number of categories billionaires are from
Select count(category) total, category from forbes.billionaires GROUP BY category order by total DESC

-- self-made billionaires list
SELECT count(selfMade), selfMade from forbes.billionaires GROUP BY selfMade