# Query Performance Before Partitioning

Query:
SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

Execution Time: ~150 ms

---

## Query Performance After Partitioning

Execution Time: ~20 ms

Observed significant performance improvement as PostgreSQL scans only the relevant partition.
