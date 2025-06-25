 -- 1. Define the following terms: data, database, relational database, and table.
 
 --Data (Ma'lumot) - raqam, matn yoki sana kabi faktlar (Masalan: "Abdulaziz", 32, "09/06/2025")
 --Database (Ma'lumotlar bazasi) - bir joyda saqlanuvchi ma'lumotlar to'plami.
 --Relational Database - jadval ko'rinishida saqlanadigan va ular o'rtasida bog'lanish bo'lgan ma'lumotlar bazasi.
 --Table (Jadval) - ma'lumotlar bazasidagi column va row lardan tashkil topgan strukturaviy birlik.

 --2. List five key features of SQL Server.

 -- Katta hajmdagi ma'lumotlarni boshqarish imkoniyati.
 --Transaksiyalarni qo'llab quvvatlaydi.
 --Windows autentifikatsiyasi orqali xavsizlikni yaratish imkoniyati.
 --Jadval, stored procedure, trigger va view'larni yaratish imkoniyati.
 --SSMS orqali vizual interfeys bilan ishlash, yani SSMS bilan integratsiya.

 --3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
  
  --SQL Serverga ulanishdagi autentifikatsiya turlari:
  -- 1) Windows Authentification - foydalanuvchi Windows tizimidagi login orqali ulanadi.
  -- 2) SQL Server Authentification - maxsus foydalanuvchi nomi va parol orqali ulanadi.

  --4. Create a new database in SSMS named SchoolDB.

  create database SchoolDB

  --5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

  use SchoolDB

  create table StudentID (StudentID Int Primary Key, Name varchar(50), Age Int)


  --6. Describe the differences between SQL Server, SSMS, and SQL.

  --SQL Server - Microsoft tomonidan yaratilgan ma'lumotlar bazasi serveri, yani backend sistema
  --SSMS - SQL Server bilan ishlash uchun mo'ljallangan grafik interfeysli dastur.
  --SQL - Ma'lumotlar bilan ishlash uchun yoziladigan so'rov tili yani ,,query language". Misol uchun: Select * from Students

  --7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.

  /* DQL: Data Query Language - Ma'lumotni so'rash (query qilish) "select" bilan ishlaniladi.
     DML: Data Manipulation Language - Ma'lumotni o'zgartirish, qo'shish, o'chirish. "Insert, Update, delete" bilan ishlaniladi.
	 DDL: Data Definition Language - Struktura yaratish yoki o'zgartirish. "Create, alter, drop, truncate" bilan ishlaniladi.
	 DCL: Data Control Language - Ruxsatlar va xavfsizlikni boshqarish. "Grant va revoke"  bilan ishlaniladi.
	 TCL: Transaction Control Language - Tranzaksiyalarni boshqarish. "Commit, rollback, savepoint" bilan ishlaniladi.

	 Misol, DQL uchun*/

	 select * from StudentID

	 --Dml: malumot qo'shish
	 insert into StudentID (StudentID, Name, Age) values (1, 'Abdulaziz', 21)

	 --DDL: Jadval yaratish
	 create table courses (CourseID Int Primary Key, CourseName varchar(50))

-- 8. Write a query to insert three records into the Students table.

insert into StudentID (StudentID, Name, Age) values
(2, 'Mirodil', 22),
(3, 'Bobur', 32),
(4, 'Olim', 24)

select * from StudentID
