INSERT INTO products (name, category) 
SELECT 
    'Товар для интернет-магазина №' || i AS name, 
    CASE (i % 5)
        WHEN 0 THEN 'Электроника'
        WHEN 1 THEN 'Одежда'
        WHEN 2 THEN 'Продукты'
        WHEN 3 THEN 'Книги'
        WHEN 4 THEN 'Бытовая техника'
    END AS category
FROM generate_series(1, 100) AS i;
