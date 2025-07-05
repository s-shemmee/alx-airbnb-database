-- Create an index on users.email for fast lookups
CREATE INDEX idx_users_email
ON users(email);

-- Create an index on bookings.start_date for partition queries
CREATE INDEX idx_bookings_start_date
ON bookings(start_date);

-- Create an index on properties.location
CREATE INDEX idx_properties_location
ON properties(location);

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
