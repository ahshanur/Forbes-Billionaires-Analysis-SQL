select  count(*) from forbes.billionaires where gender="M";

select  count(*) from forbes.billionaires where gender="F";

Select count(gender), gender from forbes.billionaires GROUP BY gender

Select count(country) as Totol_billionaires, country from forbes.billionaires GROUP BY country order by Totol_billionaires desc

SELECT forbes.billionaires.rank, personName, finalWorth from forbes.billionaires WHERE finalWorth>='50000' limit 100

SELECT forbes.billionaires.rank, personName, age, finalWorth from forbes.billionaires WHERE age<=40 order by age

SELECT AVG(finalWorth) AS average_worth, count(country) as Totol_billionaires, country from forbes.billionaires GROUP BY country order by average_worth DESC

select personName, title from forbes.billionaires WHERE title LIKE '%CEO%'

Select count(category) total, category from forbes.billionaires GROUP BY category order by total DESC

SELECT count(selfMade), selfMade from forbes.billionaires GROUP BY selfMade