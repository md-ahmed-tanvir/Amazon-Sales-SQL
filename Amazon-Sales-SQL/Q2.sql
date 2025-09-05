# 2. Find products with a discount percentage of 50% or more.

select product_name, discount_percentage 
from mytable
where discount_percentage >= 0.5;

