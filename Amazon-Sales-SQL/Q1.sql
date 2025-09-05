# 1. List all products with a discounted price below ₹500.

select product_name, discounted_price
from mytable
where discounted_price < 500;

