-- Create Users Table
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Categories Table
CREATE TABLE categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

-- Create Products Table
CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    category_id INTEGER,
    price REAL NOT NULL,
    stock_quantity INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Create Orders Table
CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    total_amount REAL NOT NULL,
    status TEXT DEFAULT 'PENDING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create Order Items Table
CREATE TABLE order_items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price REAL NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Insert Categories
INSERT INTO categories (name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Furniture'),
('Food');

-- Insert Users
INSERT INTO users (name, email, phone) VALUES
('Ashik Rahman', 'ashik@example.com', '+8801700000001'),
('Sara Ahmed', 'sara@example.com', '+8801700000002'),
('Nabil Hasan', 'nabil@example.com', '+8801700000003');

-- Insert Products
INSERT INTO products (name, description, category_id, price, stock_quantity) VALUES
('Laptop', '15-inch business laptop', 1, 850.00, 12),
('Wireless Mouse', 'Bluetooth mouse', 1, 25.00, 50),
('T-Shirt', 'Cotton T-Shirt', 2, 15.99, 100),
('Office Chair', 'Ergonomic chair', 4, 120.00, 15),
('Programming Book', 'Learn Kotlin', 3, 30.00, 40);

-- Insert Orders
INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 875.00, 'COMPLETED'),
(2, 45.99, 'PENDING');

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 850.00),
(1, 2, 1, 25.00),
(2, 3, 1, 15.99),
(2, 5, 1, 30.00);

-- Useful Queries

SELECT * FROM users;

SELECT * FROM products
WHERE stock_quantity < 20;

SELECT
    orders.id,
    users.name,
    orders.total_amount,
    orders.status
FROM orders
JOIN users ON users.id = orders.user_id;

SELECT
    products.name,
    categories.name AS category
FROM products
JOIN categories ON categories.id = products.category_id;