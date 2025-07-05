# Original Query Performance

- Execution Time: ~180 ms
- EXPLAIN showed sequential scans on large tables.

---

## Optimization Steps

✅ Limited columns in SELECT
✅ Replaced INNER JOIN on payments with LEFT JOIN
✅ Ensured relevant indexes exist

---

## Optimized Query Performance

- Execution Time: ~35 ms
- EXPLAIN now uses index scans.
