# 📊 SQL Data Warehouse Project

Welcome to the SQL Data Warehouse Project repository! 🚀

This project demonstrates the design and implementation of a **SQL Data Warehouse** using the **Medallion Architecture** approach.
The goal of this project is to load raw CSV data into a database, transform it using ELT processes, and create business-ready analytical tables.

---

## 🏗️ Data Architecture

The project follows the **Medallion Architecture** pattern consisting of three logical layers to ensure scalability, data quality, and maintainability.

### 🥉 Bronze Layer
Stores raw CSV data in table format without applying any transformations.

### 🥈 Silver Layer
Applies ELT processes to clean, validate, standardize, and transform data from the Bronze layer.

### 🥇 Gold Layer
Creates merged and aggregated business-ready tables optimized for reporting and analytics.

---

## 📌 Project Overview

### 🔄 ELT Pipeline
Follows an Extract, Load, Transform process where data is loaded into Bronze, transformed in Silver, and prepared for business use in Gold.

### 🧱 Data Modeling
Applies structured relational modeling with transformed and aggregated tables designed for efficient analytical queries.

### 📊 Analytics & Reporting
Provides aggregated datasets and KPI-based tables in the Gold layer for reporting and data-driven decision-making.

---

## 🛠️ Technologies Used

- SQL
- Relational Database System (MySQL / SQL Server / PostgreSQL)
- CSV File Handling
- Data Warehousing Concepts
- Medallion Architecture

---

## 📚 Concepts Applied

- Data Warehousing
- Medallion Architecture
- ELT Process
- Data Cleaning and Transformation
- Table Merging
- Data Aggregation
- Business Logic Implementation

---

## 🎯 Learning Outcomes

Through this project, I learned:

- Designing a layered data warehouse architecture
- Loading raw data from CSV files into SQL tables
- Writing complex SQL queries
- Performing ELT transformations
- Creating analytics-ready datasets
- Understanding real-world data engineering workflows

## 📌 Conclusion

This SQL Data Warehouse project demonstrates how raw CSV data can be transformed into structured and meaningful business insights using the Medallion Architecture.

The layered approach improves:

- Data quality
- Scalability
- Maintainability
- Analytical performance

