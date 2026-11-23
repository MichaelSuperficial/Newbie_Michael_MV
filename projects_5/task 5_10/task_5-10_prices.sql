-- 1. Выведите 5 самых дорогих записей.
SELECT * FROM prices ORDER BY price DESC LIMIT 5;

-- 2. Выведите 10 последних добавленных записей, отсортированных по created_at.
SELECT * FROM prices ORDER BY created_at DESC LIMIT 10;

-- 3. Выведите 10 самых дешёвых цен.
SELECT * FROM prices ORDER BY price ASC LIMIT 10;

-- 4. Пропустите первые 20 самых дорогих значений и отобразите следующие 10.
SELECT * FROM prices ORDER BY price DESC LIMIT 10 OFFSET 20;