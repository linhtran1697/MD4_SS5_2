-- Chay SAU khi khoi dong ung dung thanh cong (bang orders da duoc tao).
-- Them du lieu theo order_code neu chua co; khong xoa du lieu cu.
USE order_db;
START TRANSACTION;
INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD001', 'Nguyễn Văn An', 125000.0, 'PENDING', '2026-10-01 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD001');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD002', 'Trần Thị Bình', 150000.0, 'SHIPPING', '2026-10-02 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD002');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD003', 'Lê Minh Châu', 175000.0, 'DELIVERED', '2026-10-03 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD003');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD004', 'Phạm Quốc Dũng', 200000.0, 'CANCELLED', '2026-10-04 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD004');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD005', 'Hoàng Thu Hà', 225000.0, 'PENDING', '2026-10-05 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD005');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD006', 'Nguyễn Văn An', 250000.0, 'SHIPPING', '2026-10-06 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD006');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD007', 'Vũ Đức Huy', 275000.0, 'DELIVERED', '2026-10-07 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD007');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD008', 'Đặng Ngọc Lan', 300000.0, 'CANCELLED', '2026-10-08 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD008');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD009', 'Bùi Quang Minh', 325000.0, 'PENDING', '2026-10-09 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD009');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD010', 'Đỗ Thị Nga', 350000.0, 'SHIPPING', '2026-10-10 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD010');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD011', 'Trần Thị Bình', 375000.0, 'DELIVERED', '2026-10-11 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD011');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD012', 'Lê Minh Châu', 400000.0, 'CANCELLED', '2026-10-12 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD012');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD013', 'Phan Anh Tuấn', 425000.0, 'PENDING', '2026-10-13 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD013');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD014', 'Nguyễn Văn An', 450000.0, 'SHIPPING', '2026-10-14 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD014');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD015', 'Hoàng Thu Hà', 475000.0, 'DELIVERED', '2026-10-15 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD015');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD016', 'Vũ Đức Huy', 500000.0, 'CANCELLED', '2026-10-16 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD016');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD017', 'Đặng Ngọc Lan', 525000.0, 'PENDING', '2026-10-17 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD017');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD018', 'Bùi Quang Minh', 550000.0, 'SHIPPING', '2026-10-18 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD018');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD019', 'Đỗ Thị Nga', 575000.0, 'DELIVERED', '2026-10-19 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD019');

INSERT INTO orders (order_code, customer_name, total_price, status, created_at)
SELECT 'ORD020', 'Phan Anh Tuấn', 600000.0, 'CANCELLED', '2026-10-20 09:00:00'
WHERE NOT EXISTS (SELECT 1 FROM orders WHERE order_code = 'ORD020');

COMMIT;

SELECT status, COUNT(*) AS quantity FROM orders GROUP BY status;
SELECT COUNT(*) AS total_orders FROM orders;
