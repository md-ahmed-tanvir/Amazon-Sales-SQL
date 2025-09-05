# Amazon-Sales-SQL

**Project Overview**: You are working at Amazon, a leading e-commerce platform. The management has tasked you with analyzing sales data by performing different queries in sql. 

# Objectives
To perform a comprehensive product and review analysis to identify budget-friendly, high-performing accessories and cables, based on price, discount percentage, review content, and customer ratings.

This objective is achieved through queries that:

- Filter products based on price and discount thresholds.
- Analyze keyword patterns in product names and review content.
- Compare actual and discounted prices.
- Extract sentiment from customer feedback.
- Focus on relevant categories like "Accessories" and features such as "fast charging."

**Database Creation**: The project starts by creating a database named amazon_sales.

**Table Creation**: 
A table named mytable is created to store the sales data. 
The table structure includes columns for (`product_id`,`product_name`,`category`,`discounted_price`,`actual_price`,`discount_percentage`,`rating`,`rating_count`,`about_product`,`user_id`,`user_name`,`review_id`,`review_title`,`review_content`,`img_link`,`product_link`).

```sql

CREATE TABLE `mytable` (
  `product_id` VARCHAR(1024),
  `product_name` VARCHAR(1024),
  `category` VARCHAR(1024),
  `discounted_price` DOUBLE,
  `actual_price` DOUBLE,
  `discount_percentage` DOUBLE,
  `rating` DOUBLE NULL,
  `rating_count` DOUBLE NULL,
  `about_product` Text,
  `user_id` VARCHAR(1024),
  `user_name` VARCHAR(1024),
  `review_id` VARCHAR(1024),
  `review_title` VARCHAR(1024),
  `review_content` Text,
  `img_link` VARCHAR(1024),
  `product_link` VARCHAR(1024)
);

```

# Data Analysis and Business key problem answers 

## Q1. List all products with a discounted price below ₹500.

```sql

select product_name, discounted_price
from mytable
where discounted_price < 500;

```

## Q2. Find products with a discount percentage of 50% or more.

```sql

select product_name, discount_percentage 
from mytable
where discount_percentage >= 0.5;

```


## Q3. Retrieve all products where the name contains the word "Cable."

```sql

select product_name
from mytable
where product_name like '%Cable%';

```


## Q4. Display the difference between the average of the actual price and the average of discounted price for each product.

```sql

select product_name,
avg(actual_price),
avg(discounted_price), 
(avg(actual_price) - avg(discounted_price)) as 'avg_price_diff'
from mytable
group by product_name;

```


## Q5. Query reviews that mention "fast charging" in their content.

```sql

select review_content 
from mytable
where review_content like "%fast charging%";

```


## Q6. Identify products with a discount percentage between 20% and 40%.

```sql

select product_name ,discount_percentage 
from mytable
where discount_percentage between 0.2 and 0.4;

```


## Q7. Find products that have an actual price above ₹1,000 and are rated 4 stars or above.

```sql

select product_name, actual_price, rating
from mytable
where actual_price > 1000 
and rating >= 4;

```


## Q8. Find products where the discounted price ends with a 9 ?

```sql

select product_name, discounted_price
from mytable
where discounted_price like "%9";

```



## Q9. Display review contents that contains words like worst, waste, poor, or not good.

```sql

select review_content 
from mytable
where review_content like "%worst%"
or review_content like "%waste%"
or review_content like "%poor%"
or review_content like "%not good%";

```


## Q10. List all products where the category includes "Accessories."

```sql

select product_name, category
from mytable
where category like "%Accessories%";

```


# Findings

- Affordable Products: A total of 576 products are priced below ₹500 after discount, indicating a significant presence of budget-friendly options.

- High Discounts: 751 products offer a 50% or more discount, showcasing aggressive pricing strategies.

- Cable-related Products: There are 304 products with the word "Cable" in their names, suggesting a strong market presence of cable-related items.

- Moderate Discounts: 352 products fall within the 20% to 40% discount range, offering moderate deals for value-conscious customers.

- Premium yet Popular: 709 products are priced above ₹1,000 and have a 4-star rating or higher, reflecting customer satisfaction with higher-end items.

- Psychological Pricing: 1000 products have discounted prices ending in 9, a common pricing tactic to enhance perceived value.

- Accessories Dominance: 890 products are categorized under "Accessories", indicating a significant product assortment in this category.











