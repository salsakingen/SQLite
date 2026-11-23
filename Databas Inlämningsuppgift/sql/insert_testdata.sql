PRAGMA foreign_keys = ON;


INSERT INTO city (Name) VALUES
('Malmö'),
('Lund');

INSERT INTO postal_code (PostalCode, CityId) VALUES 
('21122',1),
('21225',1),
('22350',2);

INSERT INTO supplier (Name,Street, PostalCodeId, Contact, PhoneNumber, Email) VALUES
('Kvarnen AB',    'Mjölvägen 1', 1,  'Anna Svensson', '040-123456', 'anna@kvarnen.se'),        
('Mejeriet Syd',  'Mjölkgatan 5',3, 'Erik Larsson',  '046-654321', 'erik@mejerietsyd.se'),    
('Sockerbolaget', 'Sötvägen 12',2, 'Lisa Berg',     '040-987654', 'lisa@sockerbolaget.se');  

INSERT INTO ingredient (Name, StockKg) VALUES
('Vetemjöl', 120),  
('Rågmjöl',   40),  
('Socker',    30),  
('Smör',      15),  
('Mjölk',     20),  
('Kanel',      2),  
('Jäst',       3);  

INSERT INTO product (Name, Category) VALUES
('Kanelbulle',    'Bullar'),     
('Rågbröd',       'Bröd'),       
('Prinsesstårta', 'Konditori');  

INSERT INTO supplier_ingredient (SupplierId, IngredientId, ArticleNumber, PriceKG) VALUES
(1, 1, 'KV-1001', 12),   
(1, 2, 'KV-1002', 14),  
(1, 7, 'KV-1003', 60),
(2, 4, 'MS-0010', 95),
(2, 5, 'MS-0011', 12), 
(3, 3, 'SB-0200', 18),   
(3, 6, 'SB-0310', 220),   
(3, 1, 'SB-0150', 13);   

INSERT INTO purchase (SupplierId, PurchaseDate) VALUES
(1, '2026-11-01'), 
(2, '2026-11-03'),  
(3, '2026-11-05');  

INSERT INTO purchase_item (PurchaseId, IngredientId, QuantityKg, PriceKg) VALUES
(1, 1, 100, 12),  
(1, 2,  40, 14),   
(1, 7,   3, 60), 
(2, 4,  15, 95), 
(2, 5,  20, 12),  
(3, 3,  30, 18),   
(3, 6,   2, 220); 

INSERT INTO recipe_item (ProductId, IngredientId, AmountKg) VALUES
(1, 1, 1.0), (1, 3, 0.15), (1, 4, 0.2), (1, 5, 0.5), (1, 6, 0.02), (1, 7, 0.05),  
(2, 2, 0.6), (2, 1, 0.4),  (2, 7, 0.03),                                          
(3, 1, 0.3), (3, 3, 0.4),  (3, 4, 0.2),  (3, 5, 0.5);                            