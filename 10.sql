select division,fs.product_code,product,sum(sold_quantity)as 'total_sold_quantity',rank () over ( partition by division
  order by sum(sold_quantity) desc)as 'rank'
from gdb023.dim_product as dp
left join gdb023.fact_sales_monthly as fs 
on dp.product_code = fs.product_code
where fiscal_year = 2021 
group by division,product_code,product

; 