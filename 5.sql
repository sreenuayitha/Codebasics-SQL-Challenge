select segment,fiscal_year,count(distinct product) as 'product_count'
from gdb023.fact_sales_monthly 
left join gdb023.dim_product 
ON fact_sales_monthly.product_code = dim_product.product_code 
where fiscal_year=2020 or 2021
group by fiscal_year,segment
order by fiscal_year;
