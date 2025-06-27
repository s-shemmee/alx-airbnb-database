# Database Normalization for ALX Airbnb Clone

## Goal

Ensure the database design is in **Third Normal Form (3NF)** to avoid redundancy and maintain data integrity.

---

## Entities and Normalization Review

### USERS Table

✅ Already normalized:
- Atomic fields (first name, last name, etc.)
- No repeating groups
- Each attribute depends on the primary key.

### PROPERTIES Table

✅ Already normalized:
- No repeating groups.
- host_id references USERS.

Note:
- `pricepernight` stays as a single attribute, atomic value.

### BOOKINGS Table

✅ Already normalized:
- Each attribute depends on the primary key.
- Foreign keys ensure relational integrity.

### PAYMENTS Table

✅ Already normalized:
- Payment linked to exactly one booking via booking_id.

### REVIEWS Table

✅ Already normalized:
- Each review belongs to a user and a property.
- No transitive dependencies.

### MESSAGES Table

✅ Already normalized:
- Each message references a sender and recipient.
- All columns dependent on the message_id PK.

---

## Redundancy Check

- No repeating groups.
- No multivalued attributes.
- No derived values stored (e.g. total price calculated externally).
- Proper foreign keys link all dependent data.

**✅ All tables are in 3NF.**

No additional normalization required beyond the design provided.

