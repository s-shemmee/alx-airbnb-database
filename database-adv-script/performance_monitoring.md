# Using EXPLAIN

EXPLAIN
SELECT * FROM users WHERE email = '<test@example.com>';

Result:
Index Scan using idx_users_email...

---

## Using ANALYZE

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

Observed actual time ~ 20ms due to partition pruning.

---

## Bottlenecks Found

- Full table scans on bookings table before partitioning.
- Slow text searches in properties without an index.

---

## Improvements Implemented

✅ Added indexes
✅ Partitioned bookings table
✅ Reduced SELECT *
