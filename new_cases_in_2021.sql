select continent, sum(new_cases) as total_new_cases, strftime('%Y', date) as year
from owid_covid_data
where strftime('%Y', date) = '2021' and new_cases is not null and continent is not null
group by continent
order by total_new_cases desc
limit 10
