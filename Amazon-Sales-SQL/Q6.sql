# 6. Identify products with a discount percentage between 20% and 40%.

select product_name ,discount_percentage 
from mytable
where discount_percentage between 0.2 and 0.4;