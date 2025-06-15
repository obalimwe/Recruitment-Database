# Recruitment-Database
A database normalization project that transforms a denormalized recruitment system into a Third Normal Form (3NF) schema.

# Objective: 
Transform a recruitment database with data redundancy and integrity issues. The original system used a single denormalized table with 12 mixed columns (personal details, contact info, academic records, interview scores), causing storage inefficiency and potential data corruption in a growing recruitment operation

# Solution:
Redesigned the entire database architecture following Third Normal Form (3NF) principles. Decomposed the structure into 12 specialized, interconnected tables including separate entities for applicant demographics, contact details, addresses, academic records, and role applications. Implemented intelligent selection criteria with CGPA thresholds (3.5+ for Data Scientists and Analyst) and experience requirements (3+ years), plus role-specific skill assessments across two interview rounds.

# Process:
Analysis Phase: Identified functional dependencies and transitive relationships in the original schema
Normalization: Applied 1NF, 2NF, and 3NF principles to eliminate data redundancy and ensure atomic values
Business Logic Implementation: Created specialized views for Data Analyst vs Data Scientist tracks with skill matrices: SQL, Excel, Power BI, Python for Analysts and Scientists
Data Validation: Implemented comprehensive CHECK constraints for age restrictions, email format validation, and standardized 1-10 scoring systems
Documentation: Developed complete SQL DDL scripts and converted final schema to visual diagrams using dbdiagram.io

# Impact: 
Achieved significant improvements in data integrity, storage efficiency, and query performance while creating a scalable foundation for enterprise-level recruitment operations

The live db-diagram can be found <a href="https://dbdiagram.io/d/67b3a441263d6cf9a07aaced">Here!</a>
