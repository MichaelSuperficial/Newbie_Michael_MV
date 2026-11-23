-- По одному поставщику для каждого товара
INSERT INTO suppliers (name, product_id) 
SELECT 'ООО Поставщик №' || id, id 
FROM products;

-- Добавим второго поставщика для четных товаров (для разнообразия)
INSERT INTO suppliers (name, product_id) 
SELECT 'ИП Снабженец №' || id, id 
FROM products 
WHERE id % 2 = 0;