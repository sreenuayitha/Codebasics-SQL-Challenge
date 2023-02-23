select dim_customer.customer_code,customer,round(avg(pre_invoice_discount_pct),2)as average_discount_pre from gdb023.fact_pre_invoice_deductions join gdb023.dim_customer 
on fact_pre_invoice_deductions.customer_code=dim_customer.customer_code

group by customer,customer_code
order by average_discount_pre desc
limit 5
;