# SQL-Task-8
SQL E-Commerce database for internship task(day 8)

– SQL Stored Procedures and Functions

This task is part of my internship at Elevate Labs and demonstrates the use of **Stored Procedures** and **User-Defined Functions** in MySQL. These features help encapsulate logic, reuse queries, and make SQL operations efficient and modular.

---

## 📚 Objectives

- Learn to create and use stored procedures in MySQL
- Build custom SQL functions with input parameters
- Handle logic using IF/ELSE and RETURN statements
- Use CALL and SELECT to execute these routines

---

## 🛠️ Tools Used

- MySQL Workbench


## 🗃️ Tables Used

- `StudentDetails`: Stores student info (ID, Name, Address)
- `StudentMarks`: Stores student marks and age

---

## 🔧 Procedures & Functions

### ✅ Stored Procedure: `InsertStudent`
Inserts a new student into `StudentDetails`.

```sql
CREATE PROCEDURE InsertStudent(IN sid INT, IN name VARCHAR(100), IN addr VARCHAR(100))
BEGIN
  INSERT INTO StudentDetails (S_ID, NAME, ADDRESS)
  VALUES (sid, name, addr);
END;
```

### ✅ Function: `GetGrade`
Returns grade (A+, A, B, C) based on marks.

```sql
CREATE FUNCTION GetGrade(score INT)
RETURNS VARCHAR(2)
BEGIN
  DECLARE grade VARCHAR(2);
  IF score >= 90 THEN SET grade = 'A+';
  ELSEIF score >= 75 THEN SET grade = 'A';
  ELSEIF score >= 60 THEN SET grade = 'B';
  ELSE SET grade = 'C';
  END IF;
  RETURN grade;
END;
```

---

## 📂 Files in this Repo

| File Name               | Description                                                  |
|-------------------------|--------------------------------------------------------------|
| `procs_and_funcs.sql`   | SQL code for procedures and functions                        |
| `StudentTables.sql`     | Schema and data insertions for StudentDetails & StudentMarks |
| `README.md`             | Project overview and explanation                             |


---

## 💡 Learning Outcomes

- Wrote modular and reusable SQL logic
- Practiced data-driven programming in SQL
- Used conditionals and return logic inside SQL
- Learned to test and call stored routines

---

## 👨‍💻 Created By

**Umer Mansuri**  
Intern @ Elevate Labs  
July 2025
