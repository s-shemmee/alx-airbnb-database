-- Total number of bookings made by each user
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_bookings DESC;


-- Ranking properties by number of bookings using RANK()
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS booking_count,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank
FROM properties p
LEFT JOIN bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name
ORDER BY rank;


-- Ranking properties by number of bookings using ROW_NUMBER()
SELECT
    property_id,
    property_name,
    booking_count,
    ROW_NUMBER() OVER (ORDER BY booking_count DESC) AS row_num
FROM (
    SELECT
        p.property_id,
        p.name AS property_name,
        COUNT(b.booking_id) AS booking_count
    FROM properties p
    LEFT JOIN bookings b ON p.property_id = b.property_id
    GROUP BY p.property_id, p.name
) AS subquery
ORDER BY row_num;
