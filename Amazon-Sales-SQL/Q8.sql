# 8. Find products where the discounted price ends with a 9 ?

select product_name, discounted_price
from mytable
where discounted_price like "%9";
