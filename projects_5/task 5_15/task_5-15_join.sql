SELECT
    p.name  AS "название товара",
    pr.price AS "цену"
FROM products p
JOIN prices pr ON pr.product_id = p.id;