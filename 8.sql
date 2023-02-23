select quarter(date) as 'quarter',sum(sold_quantity) as 'total_sold_quantity'
from gdb023.fact_sales_monthly 
where date between '2020-01-01' and '2020-12-01'
group by quarter
order by total_sold_quantity desc
;

