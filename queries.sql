INSERT INTO customer(username, password, created_at) VALUES('Emily_Johnson', 'XyZ123!@', CURRENT_TIMESTAMP), 
('Benjamin_Anderson', 'P@ssw0rd789', CURRENT_TIMESTAMP),
('Sophia_Ramirez', 'Secure2023#', CURRENT_TIMESTAMP),
('Alexander_Wilson', 'Starlight77$', CURRENT_TIMESTAMP),
('Olivia_Thompson', 'SecretPass123', CURRENT_TIMESTAMP);

INSERT INTO item(name, price, description) VALUES('Bluetooth Wireless Headphones', 49.99, "Enjoy high-quality audio and seamless connectivity with these Bluetooth wireless headphones. Experience immersive sound and take calls on the go with built-in microphone and controls."),
('Fitness Tracker Watch', 39.99, "Keep track of your health and fitness goals with this sleek and reliable fitness tracker watch. Monitor your heart rate, track steps and calories burned, and receive notifications right on your wrist."),
('Portable Bluetooth Speaker', 29.99, "Take your music anywhere with this compact and powerful portable Bluetooth speaker. Enjoy rich, vibrant sound and wirelessly connect your devices for up to 8 hours of playtime."),
('Smart Home Security Camera', 89.99, "Enhance your home security with this advanced smart camera. Monitor your property in real-time, receive alerts on your phone, and even communicate with visitors through the built-in microphone and speaker."),
('Electric Coffee Grinder', 19.99, "Brew the perfect cup of coffee with this electric coffee grinder. Customize your grind size and enjoy the freshest coffee by grinding your beans just before brewing."),
('Waterproof Sports Watch', 59.99, "Stay active and stylish with this durable waterproof sports watch. With multiple sports modes, heart rate monitoring, and a sleek design, it's the perfect companion for your workouts."),
('Compact Digital Camera', 129.99, "Capture stunning photos and videos with this compact digital camera. With high-resolution imaging, optical zoom, and intuitive controls, it's perfect for both beginners and enthusiasts."),
('Wireless Charging Pad', 24.99, "Simplify your charging experience with this sleek wireless charging pad. Just place your compatible device on the pad, and enjoy convenient and fast wireless charging."),
('Stainless Steel Cookware Set', 79.99, "Upgrade your kitchen with this high-quality stainless steel cookware set. With a variety of pots and pans, you'll have everything you need to prepare delicious meals with ease."),
('Robot Vacuum Cleaner', 199.99, "Keep your floors clean effortlessly with this intelligent robot vacuum cleaner. It navigates your home, automatically detects dirt and dust, and efficiently cleans every corner, saving you time and effort.");

INSERT INTO `order`(customer_id, created_at) VALUES(1, CURRENT_TIMESTAMP),
(2, CURRENT_TIMESTAMP),
(3, CURRENT_TIMESTAMP),
(4, CURRENT_TIMESTAMP),
(5, CURRENT_TIMESTAMP);

INSERT INTO order_item(order_id, item_id) VALUES(1, 11), (2, 12), (3,13), (4, 14), (5, 15), (1, 16), (2, 17), (3, 18), (4, 19), (5, 20), (4, 11), (4, 12), (5, 13), (3, 14), (3, 15);

SELECT c.username FROM `order` o INNER JOIN customer c ON o.customer_id = c.id ORDER BY o.created_at DESC LIMIT 5;

SELECT c.username, COUNT(o.id) FROM `order` o INNER JOIN customer c ON o.customer_id = c.id GROUP BY o.customer_id;

SELECT AVG(i.price) FROM `order` o INNER JOIN order_item oi ON o.id = oi.order_id INNER JOIN item i ON i.id = oi.item_id GROUP BY o.id;

SELECT c.username, SUM(i.price) FROM `order` o INNER JOIN order_item oi ON o.id = oi.order_id INNER JOIN item i ON i.id = oi.item_id INNER JOIN customer c ON c.id = o.customer_id GROUP BY o.id ORDER BY SUM(i.price) DESC LIMIT 1;

SELECT SUM(i.price) FROM `order` o INNER JOIN order_item oi ON o.id = oi.order_id INNER JOIN item i ON i.id = oi.item_id INNER JOIN customer c ON c.id = o.customer_id GROUP BY o.customer_id;

SELECT AVG(i.price) FROM `order` o INNER JOIN order_item oi ON o.id = oi.order_id INNER JOIN item i ON i.id = oi.item_id INNER JOIN customer c ON c.id = o.customer_id GROUP BY o.customer_id;