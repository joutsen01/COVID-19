select continent, sum(total_cases) as max_total_cases
from owid_covid_data 
where continent  is not null and total_cases is not null
group by continent 
order by max_total_cases desc
limit 12