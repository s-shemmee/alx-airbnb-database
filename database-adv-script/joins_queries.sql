-- INNER JOIN: Retrieve all bookings with their user details
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;


-- LEFT JOIN: Retrieve all properties with reviews (even if no reviews exist)
SELECT
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.comment,
    r.rating
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id
ORDER BY p.property_id;


-- FULL OUTER JOIN: Retrieve all users and all bookings
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id;
