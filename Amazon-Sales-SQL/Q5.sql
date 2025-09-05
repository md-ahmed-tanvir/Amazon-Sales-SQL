# 5. Query reviews that mention "fast charging" in their content.

select review_content 
from mytable
where review_content like "%fast charging%";
