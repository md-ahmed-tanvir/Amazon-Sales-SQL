# 10 . List all products where the category includes "Accessories."

select product_name, category
from mytable
where category like "%Accessories%";

