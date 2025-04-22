# SQL Assignment Submission

## Overview
This submission contains SQL queries addressing four database management tasks:
1. Index removal
2. User creation
3. Privilege assignment
4. Password modification

## Files
- `answers.sql`: Contains all SQL solutions
- `README.md`: This documentation file

## Implementation Notes

### Database Compatibility
The solutions are primarily written for **MySQL/MariaDB**, with commented alternatives for:
- PostgreSQL
- SQL Server

### Key Features
- Error prevention with `IF EXISTS`/`IF NOT EXISTS` clauses
- Cross-DBMS compatibility notes
- Privilege flushing for immediate effect
- Clear commenting for each query

## Usage
1. Execute the entire script:
   ```bash
   mysql -u [username] -p < answers.sql
