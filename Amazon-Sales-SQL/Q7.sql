# 7. Find products that have an actual price above ₹1,000 and are rated 4 stars or above.

select product_name, actual_price, rating
from mytable
where actual_price > 1000 
and rating >= 4;
