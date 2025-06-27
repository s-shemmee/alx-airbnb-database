<h1 align="center"><em>ALX Airbnb Clone Database Project</em></h1>

---

## 📌 About This Project

This repository is part of the ALX Software Engineering Program’s Database Module. It focuses on designing and implementing a production-ready relational database for an **Airbnb-like booking platform**.

The project simulates a real-world database environment and covers:

- Entity-Relationship modeling
- Database normalization up to 3NF
- SQL schema creation with constraints and indexing
- Populating the database with realistic sample data

The goal is to build a **robust, scalable, and well-structured database** to power an accommodation booking platform, reflecting professional software engineering standards.

---

## 🧠 Learning Objectives

By completing this project, I’ve learned to:

✅ Apply advanced database design principles  
✅ Normalize schemas for efficiency and data integrity  
✅ Write SQL DDL scripts to define robust database schemas  
✅ Seed databases with meaningful, testable sample data  
✅ Visualize system design using ER diagrams  
✅ Collaborate through GitHub and professional documentation  

---

## 🗃 Project Structure
```
alx-airbnb-database/
├── ERD/
│ └── requirements.md # ER diagram in Mermaid syntax
├── normalization.md # Explanation of normalization decisions
├── database-script-0x01/
│ ├── schema.sql # SQL DDL for table creation
│ └── README.md # Details about schema design
└── database-script-0x02/
├── seed.sql # SQL data seeding script
└── README.md # Details about seed data
```

---

## 📊 Entity-Relationship Diagram

The ER diagram visualizes the core entities and relationships:

- Users can be guests, hosts, or admins
- Hosts can list multiple properties
- Guests can book properties
- Payments link to bookings
- Users can review properties
- Users can message each other

> See the ER diagram [here](ERD/requirements.md) in Mermaid format.

---

## 💾 How to Run

> Tested on PostgreSQL, but adaptable to other relational databases.

1. **Clone the repository**

```bash
git clone https://github.com/YOUR_USERNAME/alx-airbnb-database.git
cd alx-airbnb-database
```

2. **Create the database**

Example for PostgreSQL:

```sql
CREATE DATABASE airbnb_clone;
```

3. **Run the schema script**

Inside your database console:

```sql
\i database-script-0x01/schema.sql
```

4. **Insert sample data**

```sql
\i database-script-0x02/seed.sql
```

---

## 📝 What This Database Supports
✔ User management (guests, hosts, admins)
✔ Property listings with host details
✔ Booking management with status tracking
✔ Payment processing records
✔ User reviews for properties
✔ Direct user messaging system

## 🛠 Technologies Used

- SQL (PostgreSQL syntax)
- Draw.io / Mermaid.js for diagrams
- GitHub for collaboration and version control

---

🎓 About ALX SE
This project is part of the ALX SE curriculum, combining front-end and back-end learning tracks to produce industry-ready engineers capable of building scalable systems.

---

<p align="center"><em>Happy Coding!</em></p> 
