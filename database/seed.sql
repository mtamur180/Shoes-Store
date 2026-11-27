INSERT INTO categories (name, slug) VALUES ('Running', 'running'), ('Lifestyle', 'lifestyle') ON CONFLICT (slug) DO NOTHING;
INSERT INTO products (category_id, name, slug, description, price_cents, compare_at_price_cents)
SELECT id, 'Velocity Runner', 'velocity-runner', 'Responsive everyday running shoe.', 12999, 14999 FROM categories WHERE slug = 'running'
ON CONFLICT (slug) DO NOTHING;
INSERT INTO product_images (product_id, url, alt_text)
SELECT id, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=80', 'Red running shoe' FROM products WHERE slug = 'velocity-runner'
ON CONFLICT DO NOTHING;
INSERT INTO product_variants (product_id, sku, size, color, stock)
SELECT id, 'VR-RED-42', '42', 'Red', 20 FROM products WHERE slug = 'velocity-runner'
ON CONFLICT (sku) DO NOTHING;
