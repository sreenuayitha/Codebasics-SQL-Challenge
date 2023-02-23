SELECT * FROM gdb023.fact_sales_monthly;
#select fiscal_year, count(distinct product_code) as unique_product_count from gdb023.fact_sales_monthly group by fiscal_year;
select fiscal_year,count(distinct product_code) as product_count,round(count(*) * 100/sum(count(*)) over()) as '%_unique_product_count' from gdb023.fact_sales_monthly group by fiscal_year; 