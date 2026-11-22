DROP TABLE IF EXISTS recipe_item;
DROP TABLE IF EXISTS purchase_item;
DROP TABLE IF EXISTS purchase;
DROP TABLE IF EXISTS supplier_ingredient;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS ingredient;
DROP TABLE IF EXISTS supplier;

CREATE TABLE supplier (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR (20) NOT NULL,
    Address VARCHAR (50) NOT NULL, 
    Contact VARCHAR (50) NOT NULL,
    PhoneNumber VARCHAR (15) NOT NULL,
    Email VARCHAR (50) NOT NULL    
);
 

CREATE TABLE ingredient(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR (20) NOT NULL,
    StockKg REAL 
);

CREATE TABLE supplier_ingredient(
    SupplierId INTEGER NOT NULL,
    IngredientId INTEGER NOT NULL,
    ArticleNumber VARCHAR(20) NOT NULL,
    PriceKG REAL NOT NULL,
    PRIMARY KEY (SupplierId, IngredientId),
    FOREIGN KEY (SupplierId) REFERENCES supplier(id),
    FOREIGN KEY (IngredientId) REFERENCES ingredient(id)
);


CREATE TABLE purchase(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    SupplierId INTEGER NOT NULL,
    PurchaseDate VARCHAR (10),
    FOREIGN KEY (SupplierId) REFERENCES supplier(id)
);

CREATE TABLE purchase_item(
    PurchaseId INTEGER NOT NULL,
    IngredientId INTEGER NOT NULL,
    QuantityKg REAL NOT NULL,
    PriceKg REAL NOT NULL,
    PRIMARY KEY (PurchaseId, IngredientId),
    FOREIGN KEY (PurchaseId) REFERENCES purchase(id),
    FOREIGN KEY (IngredientId) REFERENCES ingredient(id)
);

CREATE TABLE product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR (20) NOT NULL,
    Category VARCHAR (10) NOT NULL
);

CREATE TABLE recipe_item(
    ProductId INTEGER (10) NOT NULL,
    IngredientId INTEGER (30) NOT NULL,
    AmountKg REAL NOT NULL,
    PRIMARY KEY (ProductId, IngredientId),
    FOREIGN KEY (ProductId) REFERENCES product(id),
    FOREIGN KEY (IngredientId) REFERENCES ingredient(id)
);






