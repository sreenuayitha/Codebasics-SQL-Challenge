
select channel,sum((sold_quantity*gross_price))as 'gross_sales_mln',(sum(sold_quantity*gross_price)*100)/sum(sum(sold_quantity*gross_price)) over() as "percentage"
from gdb023.fact_sales_monthly as fs  
inner join gdb023.dim_customer as dc 
on fs.customer_code = dc.customer_code
inner join gdb023.fact_gross_price as fg
on fs.product_code=fg.product_code
where fg.fiscal_year='2021'
group by channel
order by percentage desc
;


