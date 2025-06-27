-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('uuid-guest-1', 'John', 'Doe', 'john@example.com', 'hashedpass1', '1234567890', 'guest'),
    ('uuid-host-1', 'Bob', 'Jones', 'bob@example.com', 'hashedpass2', '9876543210', 'host'),
    ('uuid-admin-1', 'Admin', 'User', 'admin@example.com', 'hashedpass3', '5555555555', 'admin');

-- Insert sample properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
    ('uuid-prop-1', 'uuid-host-1', 'Cozy Loft', 'A nice place downtown.', 'New York', 120.00),
    ('uuid-prop-2', 'uuid-host-1', 'Beach House', 'Beautiful ocean views.', 'Miami', 200.00);

-- Insert bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    ('uuid-booking-1', 'uuid-prop-1', 'uuid-guest-1', '2025-07-01', '2025-07-05', 480.00, 'confirmed');

-- Insert payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
    ('uuid-payment-1', 'uuid-booking-1', 480.00, 'credit_card');

-- Insert reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
    ('uuid-review-1', 'uuid-prop-1', 'uuid-guest-1', 5, 'Great stay, highly recommended!');

-- Insert messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
    ('uuid-message-1', 'uuid-guest-1', 'uuid-host-1', 'Hello, is your loft available in August?');
