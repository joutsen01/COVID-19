select strftime('%m', date) as month, sum(new_cases) as total_new_cases
from owid_covid_data 
where new_cases is not null
group by month
order by total_new_cases desc
limit 100