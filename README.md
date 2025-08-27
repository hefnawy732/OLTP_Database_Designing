# OLTP_Database_Designing
# 🗄️ Research Projects OLTP Database Design

This repository contains the **end-to-end OLTP (Online Transaction Processing) database design** for managing **research projects, agencies, employees, and assignments**.  
It demonstrates both the **Logical Data Model (ERD)** and the **Physical Schema Implementation** in **SQL Server**, following best practices for **normalization, referential integrity, and scalability**.

---

## 📌 Project Overview
The database is designed to handle:
- **Agencies** managing research projects
- **Employees** assigned to projects
- **Addresses** shared across multiple agencies
- **Project assignments** with constraints ensuring **data integrity**

This design covers the full lifecycle from **logical modeling (ERD)** to **physical schema creation**.

---

## 🛠️ Key Features
- **Logical Model (ERD):** Entity-Relationship Diagram defining entities, attributes, and relationships.
- **Physical Model (SQL Server):** Tables with `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, and `CHECK` constraints.
- **Normalization:** Up to **3NF** to reduce redundancy and improve efficiency.
- **Referential Integrity:** Enforced using foreign keys with proper cascading.
- **Composite Keys & Surrogate Keys:** Used for scalability and uniqueness.
- **Incremental IDs:** Implemented via `IDENTITY` in SQL Server.
- **Optimized for OLTP:** Supports frequent inserts/updates with strict integrity.

---
For Conceptual Data Model + Logical Data Model: https://www.canva.com/design/DAGxMieJxa0/UhCBB-QwUkWcVGvm-nOrhA/edit?utm_content=DAGxMieJxa0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

<img width="817" height="457" alt="image" src="https://github.com/user-attachments/assets/20fbd06f-72f4-4ac1-82a7-fc1c2d347567" />

<img width="1317" height="676" alt="image" src="https://github.com/user-attachments/assets/bee55990-fbaa-4e92-a6a2-ec5df440b124" />

<img width="752" height="672" alt="image" src="https://github.com/user-attachments/assets/e7a33268-d3b9-4d37-8063-5efc4221f43f" />


