-- =====================================================================
-- CAPA 3: DATOS / PERSISTENCIA (PostgreSQL 16)
-- Datos de prueba iniciales (Seed Data)
-- =====================================================================

-- Inserción de Categorías
INSERT INTO categories (id, name, description) VALUES
(1, 'Electrónica', 'Dispositivos inteligentes, computación y audio'),
(2, 'Hogar & Oficina', 'Mobiliario ergonómico, iluminación y accesorios'),
(3, 'Moda & Accesorios', 'Ropa moderna y accesorios para el día a día'),
(4, 'Gaming', 'Periféricos y componentes para jugadores entusiastas')
ON CONFLICT (id) DO NOTHING;

-- Reiniciar la secuencia de ID de categorías
SELECT setval('categories_id_seq', (SELECT MAX(id) FROM categories));

-- Inserción de Productos
INSERT INTO products (name, category_id, description, price, stock, image_url) VALUES
('Portátil Pro Cloud 15"', 1, 'Procesador de 8 núcleos, 16GB RAM, 512GB SSD NVMe y pantalla Retina IPS.', 1199.99, 15, '💻'),
('Auriculares Noise-Cancelling', 1, 'Cancelación activa de ruido, Bluetooth 5.3, batería de 40 horas y sonido Hi-Res.', 149.50, 40, '🎧'),
('Smartwatch Fit Ultra', 1, 'Monitor cardíaco, GPS integrado, resistente al agua 50m y pantalla AMOLED.', 89.99, 25, '⌚'),
('Teclado Mecánico RGB', 4, 'Switches táctiles silenciosos, iluminación RGB personalizable y chasis de aluminio.', 79.90, 30, '⌨️'),
('Ratón Ergonómico Inalámbrico', 4, 'Sensor óptico de alta precisión 16,000 DPI, diseño ergonómico y carga rápida USB-C.', 45.00, 50, '🖱️'),
('Monitor Curvo 27" 144Hz', 1, 'Resolución QHD (2560x1440), 1ms de tiempo de respuesta y FreeSync Premium.', 289.00, 12, '🖥️'),
('Silla de Oficina Ergonómica', 2, 'Soporte lumbar ajustable, malla transpirable y reposabrazos 3D multidireccionales.', 199.00, 18, '🪑'),
('Lámpara LED de Escritorio', 2, 'Cargador inalámbrico Qi en la base, 5 modos de color y control táctil.', 39.99, 35, '💡'),
('Mochila Antirrobo para Laptop', 3, 'Compartimento acolchado de hasta 16", puerto USB exterior y tela impermeable.', 49.90, 60, '🎒'),
('Camiseta Algodón Orgánico Cloud', 3, '100% algodón orgánico peinado, ajuste regular y serigrafía de alta durabilidad.', 24.50, 100, '👕'),
('Taza Térmica Acero Inoxidable', 2, 'Mantiene bebidas calientes por 12h y frías por 24h, libre de BPA, 500ml.', 18.00, 75, '☕'),
('Hub USB-C 8 en 1 Multipuerto', 1, 'HDMI 4K, 3x USB 3.0, lector SD/TF, Ethernet Gigabit y Power Delivery 100W.', 34.99, 45, '🔌');

