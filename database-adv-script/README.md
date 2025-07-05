# 🚀 Advanced SQL: Unleashing Advanced Querying Power

This folder contains scripts and documentation for advanced SQL tasks on the Airbnb Clone Database, part of the ALX SE Program.

## ✅ Tasks & Files

### 0. Complex Joins

- Joins between users, bookings, properties, and reviews.
- File: `joins_queries.sql`

---

### 1. Subqueries

- Both correlated and non-correlated examples.
- File: `subqueries.sql`

---

### 2. Aggregations & Window Functions

- Count bookings per user.
- Rank properties by popularity.
- File: `aggregations_and_window_functions.sql`

---

### 3. Indexing

- Identify and implement indexes.
- Measure performance gains.
- Files:
  - `database_index.sql`
  - `index_performance.md`

---

### 4. Query Optimization

- Refactor complex queries.
- Analyze with EXPLAIN and optimize.
- Files:
  - `perfomance.sql`
  - `optimization_report.md`

---

### 5. Partitioning

- Partition bookings table for faster date filtering.
- Files:
  - `partitioning.sql`
  - `partition_performance.md`

---

### 6. Monitoring

- Use EXPLAIN and ANALYZE for tuning.
- File:
  - `performance_monitoring.md`

---

## 💡 How to Run

Connect to your database, then:

```sql
\i database-adv-script/joins_queries.sql
```

Test `EXPLAIN ANALYZE` for any query to evaluate performance.
