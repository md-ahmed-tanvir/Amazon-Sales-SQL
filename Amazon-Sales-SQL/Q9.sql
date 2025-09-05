# 9. Display review contents that contains words like worst, waste, poor, or not good.

select review_content 
from mytable
where review_content like "%worst%"
or review_content like "%waste%"
or review_content like "%poor%"
or review_content like "%not good%";

