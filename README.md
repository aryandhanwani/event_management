# 📅 Smart Event Management System

The **Smart Event Management System** is a structured MySQL database project designed to manage all aspects of event planning, including venues, organizers, attendees, events, tickets, and payments. It allows you to efficiently store, retrieve, and manage information about multiple events and their related entities.

---

## 🧠 Project Overview

This system is designed to:

- Store information about **event venues**, **organizers**, and **attendees**
- Manage **event details** including pricing, venue capacity, and booking availability
- Track **ticket bookings**, **payment status**, and **attendee participation**
- Maintain **data integrity** through relational references and normalization

---

## 🗃️ Database Schema

### 📌 Tables Overview

| Table Name   | Description |
|--------------|-------------|
| `venues`     | Stores information about event locations and their capacities |
| `organizers` | Contains data about the individuals or companies organizing events |
| `attendees`  | Holds the details of individuals attending events |
| `events`     | Contains key event details and foreign key references to venues and organizers |
| `tickets`    | Stores ticket bookings, linked to specific events and attendees |
| `payments`   | Tracks payment status for booked tickets |

---

### 🧱 Schema Diagram (Simplified ERD)

[venues] <---- [events] ----> [organizers]
|
[tickets] <---- [attendees]
|
[payments]


---

## 🏗️ Table Structures

### `venues`

| Column Name     | Type         | Description              |
|------------------|--------------|--------------------------|
| `venue_id`       | INT (PK)     | Unique ID for each venue |
| `venue_name`     | VARCHAR(30)  | Name of the venue        |
| `venue_location` | VARCHAR(50)  | Address or location      |
| `capacity`       | INT          | Max number of attendees  |

---

### `organizers`

| Column Name     | Type         | Description               |
|------------------|--------------|---------------------------|
| `organizer_id`   | INT (PK)     | Unique ID for organizer   |
| `organizer_name` | VARCHAR(30)  | Name of the organizer     |
| `contact_email`  | VARCHAR(50)  | Organizer’s email         |
| `phone_number`   | VARCHAR(10)  | Phone number              |

---

### `attendees`

| Column Name     | Type         | Description                 |
|------------------|--------------|-----------------------------|
| `attendee_id`    | INT (PK)     | Unique ID for attendee      |
| `name`           | VARCHAR(30)  | Full name                   |
| `email`          | VARCHAR(50)  | Email address (nullable)    |
| `phone_number`   | VARCHAR(10)  | Phone number                |

---

### `events`

| Column Name     | Type           | Description                              |
|------------------|----------------|------------------------------------------|
| `event_id`       | INT (PK)       | Unique ID for event                      |
| `event_name`     | VARCHAR(30)    | Event title                              |
| `event_date`     | DATE           | Scheduled date                           |
| `venue_id`       | INT (FK)       | Linked venue                             |
| `organizer_id`   | INT (FK)       | Linked organizer                         |
| `ticket_price`   | DECIMAL(10,2)  | Cost per ticket                          |
| `total_seats`    | INT            | Total number of seats                    |
| `avaliable_seats`| INT            | Seats remaining for booking              |

---

### `tickets`

| Column Name     | Type           | Description                            |
|------------------|----------------|----------------------------------------|
| `ticket_id`      | INT (PK)       | Ticket number                          |
| `event_id`       | INT (FK)       | Booked event                           |
| `attendee_id`    | INT (FK)       | Person who booked                      |
| `booking_date`   | DATE           | Date of booking                        |
| `ticket_status`  | VARCHAR(20)    | (e.g., Confirmed, Pending, Cancelled)  |

---

### `payments`

| Column Name     | Type           | Description                            |
|------------------|----------------|----------------------------------------|
| `payments_id`    | INT (PK)       | Payment ID                             |
| `ticket_id`      | INT (FK)       | Related ticket                         |
| `amount_paid`    | DECIMAL(10,2)  | Total paid                             |
| `payment_status` | VARCHAR(20)    | (e.g., Paid, Unpaid, Refunded)         |
| `payment_date`   | DATE           | Date of payment                        |

---

## 🛠️ How to Set Up the Project

### Step 1: Create the Database

```sql
CREATE DATABASE smart_event_management;
USE smart_event_management;
## 🛠️ Step 2: Create Tables

Use the SQL script provided to create all the required tables **in the following order** to maintain proper foreign key relationships:

1. `venues`
2. `organizers`
3. `attendees`
4. `events`
5. `tickets`
6. `payments`

> ⚠️ **Important:** Ensure the database is selected (`USE smart_event_management;`) before executing the table creation queries.

---

## 🧪 Step 3: Populate Sample Data

You can run the provided `INSERT INTO` queries to add **sample records** for testing and demonstration purposes. Sample data includes:

- Venues with various capacities and locations
- Organizers with contact info
- Attendees registered for events
- Events linked to specific venues and organizers
- Ticket bookings for those events
- Payment records related to each ticket
