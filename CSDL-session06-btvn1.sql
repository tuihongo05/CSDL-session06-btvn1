CREATE DATABASE session06_btvn1;
USE session06_btvn1;

CREATE TABLE categories(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE products(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    price DOUBLE(10,2),
    category_id INT ,
    FOREIGN KEY(category_id) REFERENCES categories(id)
);

-- Them 3 san pham vao bang products
INSERT INTO categories (name)
VALUES 
('Apple'),
('Orange'),
('Banana');

 INSERT INTO products(id, name, price, category_id)
 VALUES 
(1, 'Apple', 15000, 1),
(2, 'Orange', 10000, 2),
(3, 'Banana', 5000, 3);

-- Cap nhat gia cau 1 san pham da co
UPDATE products
SET price = 3000
WHERE id = 3;

-- Xoa 1 san pham
DELETE FROM products WHERE id = 2;

-- Hien thi tat ca san pham, sap xep theo gia
SELECT * FROM products ORDER BY price ASC;

-- Thong ke so luong san pham cho tung danh muc
SELECT categories.id, categories.name, COUNT(products.id)
FROM categories
LEFT JOIN products
ON categories.id = products.category_id
GROUP BY categories.id, categories.name;


