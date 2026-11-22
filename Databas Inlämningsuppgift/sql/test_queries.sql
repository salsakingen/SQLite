SELECT s.name,
       i.Name,
       si.ArticleNumber,
       si.PriceKG
FROM supplier_ingredient si
JOIN supplier s ON si.SupplierId= s.id
JOIN ingredient i ON si.IngredientId = i.id
ORDER BY s.Name;



SELECT p.name,
       i.name,
       pi.AmountKg
FROM recipe_item pi
JOIN product p ON pi.ProductId = p.id
JOIN ingredient i ON pi.IngredientId = i.id
ORDER BY p.Name;

SELECT s.name,
       i.name,
       si.PriceKG
FROM supplier_ingredient si 
JOIN supplier s ON si.SupplierId = s.id
JOIN ingredient i ON si.IngredientId = i.id
ORDER BY s.Name;


SELECT p.name,
       i.name,
       ri.AmountKg
FROM recipe_item ri  
JOIN product p ON ri.ProductId = p.id
JOIN ingredient i ON ri.IngredientId = i.id
ORDER BY p.Name;


SELECT DISTINCT 
        p.Name,
       s.Name
FROM product p
JOIN recipe_item         ri ON ri.ProductId     = p.id
JOIN ingredient          i  ON i.id             = ri.IngredientId
JOIN supplier_ingredient si ON si.IngredientId  = i.id
JOIN supplier            s  ON s.id             = si.SupplierId
ORDER BY p.Name;

SELECT i.Name,
       i.StockKg,
       s.Name, 
       s.PhoneNumber
FROM ingredient i
JOIN supplier_ingredient si ON si.IngredientId = i.id
JOIN supplier            s  ON s.id            = si.SupplierId
WHERE i.StockKg < 10
ORDER BY i.StockKg;

