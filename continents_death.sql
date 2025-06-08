select location, sum(total_deaths_per_million/10) as death
from owid_covid_data 
where location is not NULL and total_deaths_per_million is not NULL 
group by location 
order by death DESC 
limit 10

