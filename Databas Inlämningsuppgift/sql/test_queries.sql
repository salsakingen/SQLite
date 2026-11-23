PRAGMA foreign_keys = ON;


SELECT * FROM supplier;

SELECT s.Name AS Supplier,
       s.Street,
       pc.PostalCode,
       c.name as City,
       s.Contact,
       s.PhoneNumber,
       s.Email
FROM supplier s
JOIN postal_code pc ON pc.id = s.PostalCodeId
JOIN city c ON c.id = pc.CityId
ORDER BY s.Name;

SELECT s.Name AS Supplier,
       i.Name AS Ingredient,
       si.ArticleNumber,
       si.PriceKG
FROM supplier_ingredient si
JOIN supplier   s ON s.id = si.SupplierId
JOIN ingredient i ON i.id = si.IngredientId
ORDER BY s.Name;

SELECT p.Name AS Product,
       i.Name AS Ingredient,
       ri.AmountKg
FROM recipe_item ri
JOIN product p ON p.id = ri.ProductId
JOIN ingredient i ON i.id = ri.IngredientId
ORDER BY p.Name;


SELECT DISTINCT p.Name AS Product,
                s.Name AS Supplier
FROM product p
JOIN recipe_item ri ON ri.ProductId = p.id
JOIN supplier_ingredient si ON si.IngredientId = ri.IngredientId
JOIN supplier s  ON s.id = si.SupplierId
ORDER BY p.Name;


SELECT pu.PurchaseDate,
       s.Name AS Supplier,
       i.Name AS Ingredient,
       pi.QuantityKg,
       pi.PriceKg
FROM purchase_item pi
JOIN purchase pu ON pu.id = pi.PurchaseId
JOIN supplier s  ON s.id  = pu.SupplierId
JOIN ingredient i ON i.id  = pi.IngredientId
ORDER BY pu.PurchaseDate;


SELECT i.Name AS Ingredient,
       i.StockKg,
       s.Name AS Supplier,
       s.PhoneNumber
FROM ingredient i
JOIN supplier_ingredient si ON si.IngredientId = i.id
JOIN supplier s  ON s.id = si.SupplierId
WHERE i.StockKg < 10
ORDER BY i.StockKg;


INSERT INTO purchase (SupplierId, PurchaseDate) VALUES (99, '2026-11-10');