-- CREATE TABLES
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS cart;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    user_email VARCHAR(100)
);

CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    product_price NUMERIC(8, 2)
);

CREATE TABLE cart (
    user_id INT REFERENCES users(user_id),
    product_id INT REFERENCES product(product_id),
    quantity INT NOT NULL
);

-- INSERT DATA
INSERT INTO users (user_name, user_email)
VALUES ('user1', 'email1'),
('user2', 'email2'),
('user3', 'email3');

INSERT INTO product (product_name, product_price)
VALUES ('product1', 6.99),
('product2', 4.99),
('product3', 8.99);

INSERT INTO cart (user_id, product_id, quantity)
VALUES (1, 2, 4), (1, 3, 2),
(2, 3, 1), (2, 1, 3),
(3, 1, 5), (3, 2, 1);

-- RUN QUERIES 1
SELECT * FROM cart
WHERE user_id = 1;

-- RUN QUERIES 2
SELECT * FROM cart c
JOIN users u ON c.user_id = u.user_id;

-- RUN QUERIES 3
SELECT SUM(product_price * quantity)
FROM cart c
JOIN users u ON u.user_id = c.user_id
JOIN product p ON p.product_id = c.product_id
WHERE u.user_id = 1;

-- RUN QUERIES 4
UPDATE cart
SET quantity = 5
WHERE product_id = 2 AND user_id = 2

