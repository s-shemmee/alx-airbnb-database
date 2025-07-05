-- Measure performance before/after indexing
-- Example query: Find bookings by start_date

EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Example query: Find user by email

EXPLAIN ANALYZE
SELECT * FROM users
WHERE email = 'demo@example.com';

-- Example query: Search properties by location

EXPLAIN ANALYZE
SELECT * FROM properties
WHERE location ILIKE '%new york%';
