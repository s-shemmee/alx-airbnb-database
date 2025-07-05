# Performance Before Indexing

Query:
SELECT * FROM users WHERE email = '<test@example.com>';

Execution Time:
~80 ms (Table scan observed in EXPLAIN)

---

## Performance After Indexing

Query:
SELECT * FROM users WHERE email = '<test@example.com>';

Execution Time:
~2 ms (Index scan observed in EXPLAIN)

Significant improvement due to index usage.
