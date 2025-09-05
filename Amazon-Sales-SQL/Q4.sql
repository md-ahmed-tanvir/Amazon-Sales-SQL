# 4. Display the difference between the average of the actual price and the average of discounted price for each product.

select product_name,
avg(actual_price),
avg(discounted_price), 
(avg(actual_price) - avg(discounted_price)) as 'avg_price_diff'
from mytable
group by product_name;

