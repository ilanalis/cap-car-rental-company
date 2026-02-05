# Car Rental Management System

A backend service built with the SAP Cloud Application Programming Model (CAP). This project manages a car rental fleet, customer data with structured addresses, rental transactions, and vehicle maintenance records.

## Data Model Overview

The system is built around four main entities:

1. Cars: Stores vehicle technical specs and pricing.

2. Customers: Contains personal info and a structured Address object.

3. Rentals: Handles the many-to-many relationship between Customers and Cars.

4. Maintenances: Tracks repair logs and costs.

## Tech Stack

- Framework: SAP CAP (Node.js)

- Database: SQLite (Local development)

- Modeling: Core Data Services (CDS)

- Protocol: OData v4
