SELECT
  segment,
  COUNT(DISTINCT  case when cost_year = 2021 then product end ) AS product_count_2021,
  COUNT(DISTINCT CASE WHEN cost_year = 2020 THEN product END) AS product_count_2020,
 COUNT(DISTINCT  case when cost_year = 2021 then product end )- COUNT(DISTINCT CASE WHEN cost_year = 2020 THEN product END) AS difference
FROM
 gdb023.fact_manufacturing_cost   right join gdb023.dim_product 
on fact_manufacturing_cost.product_code=dim_product.product_code
GROUP BY
  segment
ORDER BY
  product_count_2020 DESC

;