use amazon_sales;
select * from mytable;

-- col_name
select column_name as col_count
from information_schema.columns
where table_name  = 'mytable'
AND table_schema = 'amazon_sales';

-- col_count
select count(*) as col_count
from information_schema.columns
where table_name  = 'mytable'
AND table_schema = 'amazon_sales';

-- row_count
select count(*) as row_count
from mytable;