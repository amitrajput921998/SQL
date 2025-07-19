select * from products
---Views 
create view gaming_items as
select product_name, price,stock_quantity from products where category='Gaming'

select * from gaming_items

--Stored Procedure
CREATE PROCEDURE GetAllProducts
AS
BEGIN
    SELECT * FROM products;
END;

EXEC GetAllProducts;

CREATE PROCEDURE GetProductsByCategory
    @Category VARCHAR(100)
AS
BEGIN
    SELECT * FROM products
    WHERE category = @Category;
END;



EXEC GetProductsByCategory @Category = 'Electronics';

