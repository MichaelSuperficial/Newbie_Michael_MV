-- Первая цена для всех 100 товаров
INSERT INTO prices (product_id, price) 
SELECT id, (RANDOM() * 5000 + 100)::numeric(10,2) 
FROM products;

-- Вторая цена для всех 100 товаров (сгенерирует 200 записей в итоге)
INSERT INTO prices (product_id, price) 
SELECT id, (RANDOM() * 5000 + 50)::numeric(10,2) 
FROM products;