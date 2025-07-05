-- Create an index on users.email for fast lookups
CREATE INDEX idx_users_email
ON users(email);

-- Create an index on bookings.start_date for partition queries
CREATE INDEX idx_bookings_start_date
ON bookings(start_date);

-- Create an index on properties.location
CREATE INDEX idx_properties_location
ON properties(location);
