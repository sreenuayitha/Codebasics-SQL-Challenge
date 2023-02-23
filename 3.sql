SELECT * FROM gdb023.dim_product;
select segment, count(distinct product) as product_count 
from gdb023.dim_product 
group by segment order by product_count desc;