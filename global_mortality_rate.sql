--select sum(total_deaths * 1.0) / sum(total_cases) as global_mortality_rate
--from owid_covid_data
--where total_deaths is not null and total_cases is not null

-- global_mortality_rate = 0.011032769694278566

select location, sum(total_deaths * 1.0) / sum(total_cases) as country_mortality_rate
from owid_covid_data
where total_deaths is not null and total_cases is not null
group by location
having country_mortality_rate < 0.011032769694278566 

order by country_mortality_rate asc

