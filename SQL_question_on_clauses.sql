---display the name and price of the cheapeast product in the enitre table
use flipkart_db
select top 1 name,price from product order by price 

select * from product 
---find the average price of product that belong to laptops smart home category
select avg(price) from product where category in ('Laptops','Smart Home')

---show product names and stock quantity where the product is available, stock os more than 50, and price is not equal to 299
select name,stock_quanitity from product where is_available=1 and stock_quanitity>50 and price !=299 

--- find the most expensive product in each category (name and price)
select  category,max(price) from product group by category 

---show all unique categories in uppercase sorted in descending order
select distinct (upper(category)) from product  order by (upper(category)) desc