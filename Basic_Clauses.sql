select * from product
---show the name and price of all products
select name,price from product 
---show all products where the category is 'Electronics'
select * from product where category='Electronics'
--- group products by category. show each category once
select category from product group by category
---show category that have more than 1 product 

select category,count(*) from product group by category having count(*)>1

---show all products sorted by price in ascending order
select * from product order by price 

---show only the first 3 product from the table.
select top 3* from product 

--show product name as 'Item_Name' and price as 'Item_price'.
select name as Item_Name, price as Item_price from product 

---show all the unique categories from the products
select distinct category from product 

--aggregation function
select count(*) from product 

select max(price) from product 

select min(price) from product 