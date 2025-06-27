```
erDiagram
    USERS {
        UUID user_id PK
        VARCHAR first_name
        VARCHAR last_name
        VARCHAR email UK
        VARCHAR password_hash
        VARCHAR phone_number
        ENUM role "guest, host, admin"
        TIMESTAMP created_at
    }

    PROPERTIES {
        UUID property_id PK
        UUID host_id FK
        VARCHAR name
        TEXT description
        VARCHAR location
        DECIMAL pricepernight
        TIMESTAMP created_at
        TIMESTAMP updated_at
    }

    BOOKINGS {
        UUID booking_id PK
        UUID property_id FK
        UUID user_id FK
        DATE start_date
        DATE end_date
        DECIMAL total_price
        ENUM status "pending, confirmed, canceled"
        TIMESTAMP created_at
    }

    PAYMENTS {
        UUID payment_id PK
        UUID booking_id FK
        DECIMAL amount
        TIMESTAMP payment_date
        ENUM payment_method "credit_card, paypal, stripe"
    }

    REVIEWS {
        UUID review_id PK
        UUID property_id FK
        UUID user_id FK
        INTEGER rating "1-5"
        TEXT comment
        TIMESTAMP created_at
    }

    MESSAGES {
        UUID message_id PK
        UUID sender_id FK
        UUID recipient_id FK
        TEXT message_body
        TIMESTAMP sent_at
    }

    USERS ||--o{ PROPERTIES : hosts
    USERS ||--o{ BOOKINGS : makes
    USERS ||--o{ REVIEWS : writes
    USERS ||--o{ MESSAGES : sends
    USERS ||--o{ MESSAGES : receives

    PROPERTIES ||--o{ BOOKINGS : has
    PROPERTIES ||--o{ REVIEWS : receives

    BOOKINGS ||--|| PAYMENTS : has

```
