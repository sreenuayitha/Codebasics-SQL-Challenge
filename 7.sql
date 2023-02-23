select date as month,fs.fiscal_year as year,round(sum(sold_quantity*gross_price),2) as 'gross_sales_amount'
from fact_sales_monthly as fs
		inner join dim_customer as dc
		on fs.customer_code=dc.customer_code 
      inner join fact_gross_price as fg on fs.product_code=fg.product_code
        where customer='Atliq Exclusive'
        group by date,fs.fiscal_year
        order by date
        ;