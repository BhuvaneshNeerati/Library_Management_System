-----------------------------------------------------------
---------------------------------------------------------------
CREATE TABLE LIBRARY (
  Lib_phno VARCHAR(10),
  Lib_name VARCHAR(50),
  Lib_id INT PRIMARY KEY,
  Lib_address_x FLOAT,
  Lib_address_y FLOAT
);

drop table LIBRARY;

INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES (1, 'Library A', '1234567890', 12.345, 67.890);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES  (2, 'Library B', '9876543210', 98.765, 43.210);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES (3, 'Library C', '5678901234', 56.789, 90.123);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES  (4, 'Library D', '4321098765', 43.210, 98.765);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES  (5, 'Library E', '1111111111', 11.111, 11.111);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES  (6, 'Library F', '2222222222', 22.222, 22.222);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES  (7, 'Library G', '3333333333', 33.333, 33.333);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES (8, 'Library H', '4444444444', 44.444, 44.444);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES  (9, 'Library I', '5555555555', 55.555, 55.555);
INSERT INTO LIBRARY (Lib_id, Lib_name, Lib_phno, Lib_address_x, Lib_address_y)VALUES  (10, 'Library J', '6666666666', 66.666, 66.666);

select * from library;

CREATE TABLE PUBLISHER (
  Pub_id INT PRIMARY KEY,
  Pub_name VARCHAR(100),
  Pub_country VARCHAR(100)
);

INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (1, 'Publisher A', 'India');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (2, 'Publisher B', 'Australia');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (3, 'Publisher C', 'France');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (4, 'Publisher D', 'China');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (5, 'Publisher E', 'Serbia');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (6, 'Publisher F', 'France');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (7, 'Publisher G', 'India');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (8, 'Publisher H', 'Australia');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (9, 'Publisher I', 'Serbia');
INSERT INTO PUBLISHER (Pub_id, Pub_name, Pub_country)
VALUES (10, 'Publisher J', 'India');

select * from publisher;

CREATE TABLE BOOKS (
  Count INT,
  Book_id INT PRIMARY KEY,
  Book_status VARCHAR(50),
  Book_price DECIMAL(10, 2),
  Book_title VARCHAR(100),
  Lib_id INT,
  Pub_id INT,
  FOREIGN KEY (Lib_id) REFERENCES LIBRARY (Lib_id),
  FOREIGN KEY (Pub_id) REFERENCES PUBLISHER (Pub_id)
 
);
drop table books;
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)VALUES(1, 5, 'Available', 10.99, 'Book A');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)VALUES  (2, 3, 'Unavailable', 15.99, 'Book B');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)VALUES (3, 7, 'Available', 12.99, 'Book C');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)VALUES (4, 2, 'Available', 9.99, 'Book D');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)VALUES (5, 9, 'Unavailable', 14.99, 'Book E');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)
VALUES (6, 4, 'Available', 11.99, 'Book F');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)
VALUES (7, 6, 'Unavailable', 13.99, 'Book G');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)
VALUES (8, 8, 'Available', 16.99, 'Book H');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)
VALUES (9, 1, 'Available', 8.99, 'Book I');
INSERT INTO BOOKS (Book_id, Count, Book_status, Book_price, Book_title)
VALUES (10, 7, 'Unavailable', 17.99, 'Book J');

select * from books;

CREATE TABLE ADMIN (
  Admin_id INT PRIMARY KEY,
  Admin_name VARCHAR(50),
  Admin_role VARCHAR(50)
);

drop table admin;
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role) VALUES (1, 'John Doe', 'Administrator');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(2, 'Jane Smith', 'Supervisor');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(3, 'Mike Johnson', 'Manager');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(4, 'Emily Davis', 'Coordinator');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(5, 'Robert Wilson', 'Assistant');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(6, 'Roshan chowdary', 'Assistant');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(7, 'Kenzo Tenma', 'Assistant');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(8, 'Johan Denma', 'Assistant');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(9, 'williams Smith', 'Assistant');
INSERT INTO ADMIN (Admin_id, Admin_name, Admin_role)VALUES(10, 'Warner Doe', 'Assistant');

select * from ADMIN;

CREATE TABLE EMPLOYEE (
  Emp_id INT PRIMARY KEY,
  Emp_name VARCHAR(50),
  Emp_position VARCHAR(50),
  Emp_dept VARCHAR(50)
);

drop table employee;

INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(1, 'John Smith', 'Manager', 'Finance');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES (2, 'Jane Johnson', 'Engineer', 'Engineering');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(3, 'Michael Brown', 'Analyst', 'Marketing');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(4, 'Emily Davis', 'Designer', 'Creative');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(5, 'Robert Wilson', 'Developer', 'IT');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(6, 'Jennifer Thompson', 'Sales Representative', 'Sales');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(7, 'David Martinez', 'HR Manager', 'Human Resources');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(8, 'Jessica Lee', 'Project Manager', 'Operations');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(9, 'Daniel Anderson', 'Researcher', 'R&D');
INSERT INTO EMPLOYEE (Emp_id, Emp_name, Emp_position, Emp_dept) VALUES(10, 'Sarah Walker', 'Customer Support', 'Customer Service');

select * from employee;

CREATE TABLE VENDOR (
  Vendor_id INT PRIMARY KEY,
  Vendor_name VARCHAR(50)
);

drop table vendor;

INSERT INTO VENDOR (Vendor_id, Vendor_name)VALUES(1, 'Ramesh');
  INSERT INTO VENDOR (Vendor_id, Vendor_name)VALUES(2, 'Suresh');
  INSERT INTO VENDOR (Vendor_id, Vendor_name)VALUES(3, 'Ganesh');
  INSERT INTO VENDOR (Vendor_id, Vendor_name)VALUES(4, 'Jayesh');
  INSERT INTO VENDOR (Vendor_id, Vendor_name)VALUES(5, 'Bhuvanesh');

select * from vendor;
--error did not include fine (use triggers):-
CREATE TABLE MEMBER (
  Mem_id INT PRIMARY KEY,
  Mem_phno VARCHAR(10),
  DOB DATE,
  Mem_type VARCHAR(50),
  Mem_first_name VARCHAR(50),
  Mem_last_name VARCHAR(50),
  Mem_address_x NUMBER,
  Mem_address_y NUMBER
);
SELECT * FROM MEMBER;
drop table member;
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'member';
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(1, '1234567890', TO_DATE('1990-01-01','YYYY-MM-DD'), 'B_tech', 'John', 'Smith', 12.345, 67.890);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES (2, '9876543210', TO_DATE('1992-03-15','YYYY-MM-DD'), 'M_tech', 'Jane', 'Johnson', 98.765, 43.210);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(3, '5678901234', TO_DATE('1995-07-10','YYYY-MM-DD'), 'MCA', 'Michael', 'Brown', 56.789, 90.123);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(4, '4321098765', TO_DATE('1998-05-05','YYYY-MM-DD'), 'PHD', 'Emily', 'Davis', 43.210, 98.765);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(5, '1111111111', TO_DATE('1993-11-11','YYYY-MM-DD'), 'B_com', 'Robert', 'Wilson', 11.111, 11.111);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(6, '2222222222', TO_DATE('1996-06-16','YYYY-MM-DD'), 'MSC', 'Jennifer', 'Thompson', 22.222, 22.222);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(7, '3333333333', TO_DATE('1994-09-20','YYYY-MM-DD'), 'B_tech', 'David', 'Martinez', 33.333, 33.333);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(8, '4444444444', TO_DATE('1997-12-25','YYYY-MM-DD'), 'MCA', 'Jessica', 'Lee', 44.444, 44.444);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES(9, '5555555555', TO_DATE('1991-04-30','YYYY-MM-DD'), 'M_tech', 'Daniel', 'Anderson', 55.555, 55.555);
INSERT INTO MEMBER (Mem_id, Mem_phno, DOB, Mem_type, Mem_first_name, Mem_last_name, Mem_address_x, Mem_address_y)VALUES (10, '6666666666', TO_DATE('1999-08-08','YYYY-MM-DD'), 'B_com', 'Sarah', 'Walker', 66.666, 66.666);

CREATE TABLE RECORDS (
  Received_date DATE,
  issued_date DATE,  
  Req_id INT PRIMARY KEY,
  fine DECIMAL(10, 2),
  Book_id INT,
  Mem_id INT,
  Emp_id INT,
  FOREIGN KEY (Book_id) REFERENCES BOOKS (Book_id),
  FOREIGN KEY (Mem_id) REFERENCES MEMBER (Mem_id),
  FOREIGN KEY (Emp_id) REFERENCES EMPLOYEE (Emp_id)
);
drop table records;
select * from RECORDS;
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-01-02', 'YYYY-MM-DD'), TO_DATE('2023-01-06', 'YYYY-MM-DD'), 1, 0.00, 1, 1, 1);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-02-03', 'YYYY-MM-DD'), TO_DATE('2023-02-07', 'YYYY-MM-DD'), 2, 0.00, 2, 2, 2);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-03-04', 'YYYY-MM-DD'), TO_DATE('2023-03-08', 'YYYY-MM-DD'), 3, 0.00, 3, 3, 3);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-04-05', 'YYYY-MM-DD'), TO_DATE('2023-04-09', 'YYYY-MM-DD'), 4, 0.00, 4, 4, 4);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-05-06', 'YYYY-MM-DD'), TO_DATE('2023-05-10', 'YYYY-MM-DD'), 5, 0.00, 5, 5, 5);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-06-07', 'YYYY-MM-DD'), TO_DATE('2023-06-11', 'YYYY-MM-DD'), 6, 0.00, 6, 6, 6);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-07-08', 'YYYY-MM-DD'), TO_DATE('2023-07-12', 'YYYY-MM-DD'), 7, 0.00, 7, 7, 7);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-08-09', 'YYYY-MM-DD'), TO_DATE('2023-08-13', 'YYYY-MM-DD'), 8, 0.00, 8, 8, 8);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-09-14', 'YYYY-MM-DD'), 9, 0.00, 9, 9, 9);
INSERT INTO RECORDS (Received_date, issued_date, Req_id, fine, Book_id, Mem_id, Emp_id)VALUES(TO_DATE('2023-10-11', 'YYYY-MM-DD'), TO_DATE('2023-10-15', 'YYYY-MM-DD'), 10, 0.00, 10,10,10);
 
CREATE TABLE book (
  Book_id INT,
  Req_id INT,
  PRIMARY KEY (Book_id, Req_id),
  FOREIGN KEY (Book_id) REFERENCES BOOKS (Book_id),
  FOREIGN KEY (Req_id) REFERENCES RECORDS (Req_id)
);

INSERT INTO book (Book_id, Req_id) VALUES(1, 1);
INSERT INTO book (Book_id, Req_id) VALUES(2, 2);
INSERT INTO book (Book_id, Req_id) VALUES(3, 3);
INSERT INTO book (Book_id, Req_id) VALUES(4, 4);
INSERT INTO book (Book_id, Req_id) VALUES(5, 5);
INSERT INTO book (Book_id, Req_id) VALUES(6, 6);
INSERT INTO book (Book_id, Req_id) VALUES (7, 7);
 INSERT INTO book (Book_id, Req_id) VALUES (8, 8);
 INSERT INTO book (Book_id, Req_id) VALUES (9, 9);
 INSERT INTO book (Book_id, Req_id) VALUES (10, 10);
 
  select * from book;
 
CREATE TABLE AUTHOR (
  Author_id INT PRIMARY KEY,
  qualification VARCHAR(50),
  Author_name VARCHAR(100),
  Author_subject VARCHAR(100)
);

INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (1, 'PhD', 'John Smith', 'Computer Science');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (2, 'MSc', 'Jane Johnson', 'Mathematics');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (3, 'MA', 'Michael Brown', 'History');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (4, 'PhD', 'Emily Davis', 'Psychology');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (5, 'MSc', 'Robert Wilson', 'Physics');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (6, 'MA', 'Jennifer Thompson', 'English Literature');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (7, 'PhD', 'David Martinez', 'Sociology');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (8, 'MSc', 'Jessica Lee', 'Chemistry');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (9, 'MA', 'Daniel Anderson', 'Economics');
INSERT INTO AUTHOR (Author_id, qualification, Author_name, Author_subject)
VALUES (10, 'PhD', 'Sarah Walker', 'Biology');

select * from Author;

CREATE TABLE WrittenBy (
  Book_id INT,
  Author_id INT,
  PRIMARY KEY (Book_id, Author_id),
  FOREIGN KEY (Book_id) REFERENCES BOOKS (Book_id),
  FOREIGN KEY (Author_id) REFERENCES AUTHOR (Author_id)
);

INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (1, 1);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (2, 2);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (3, 3);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (4, 4);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (5, 5);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (6, 6);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (7, 7);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (8, 8);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (9, 9);
INSERT INTO WrittenBy (Book_id, Author_id)
VALUES (10, 10);

select * from writtenby;

CREATE TABLE SALES (
  Book_id INT,
  Vendor_id INT,
  PRIMARY KEY (Book_id, Vendor_id),
  FOREIGN KEY (Book_id) REFERENCES BOOKS (Book_id),
  FOREIGN KEY (Vendor_id) REFERENCES VENDOR (Vendor_id)
);

INSERT INTO SALES (Book_id, Vendor_id)
VALUES (1, 1);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (2, 2);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (3, 3);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (4, 4);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (5, 5);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (6, 6);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (7, 7);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (8, 8);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (9, 9);
INSERT INTO SALES (Book_id, Vendor_id)
VALUES (10, 10);

select * from sales;

-- working
CREATE OR REPLACE TRIGGER UPDATE_AVAIL
BEFORE INSERT OR UPDATE ON RECORDS
FOR EACH ROW
DECLARE
    UNAVAIL_COUNT NUMBER;
    STORED_COUNT NUMBER;
BEGIN 
    SELECT COUNT(*) INTO UNAVAIL_COUNT FROM RECORDS
    WHERE BOOK_ID = :NEW.BOOK_ID AND RECEIVED_DATE IS NULL;
    SELECT COUNT(*) INTO STORED_COUNT FROM BOOKS
    WHERE BOOK_ID = :NEW.BOOK_ID;
    IF UNAVAIL_COUNT = STORED_COUNT THEN
        UPDATE BOOKS
        SET BOOK_STATUS = 'Unavailable'
        WHERE BOOK_ID = :NEW.BOOK_ID;
        RAISE_APPLICATION_ERROR(-20000, 'BOOK NOT AVAILABLE');
    END IF;
    IF UNAVAIL_COUNT + 1 <= STORED_COUNT THEN
        UPDATE BOOKS
        SET BOOK_STATUS = 'Available'
        WHERE BOOK_ID = :NEW.BOOK_ID;
    END IF;
END;
/

-- working
CREATE OR REPLACE TRIGGER update_book_count2
AFTER INSERT ON RECORDS
FOR EACH ROW
BEGIN
  UPDATE BOOKS
  SET Count = Count - 1
  WHERE Book_id = :NEW.Book_id;
END;
/

-- not working
CREATE OR REPLACE TRIGGER set_book_status2
BEFORE INSERT ON BOOKS
FOR EACH ROW
BEGIN
  SET :NEW.Book_status = 'Available'
END;
/

--not working
CREATE OR REPLACE TRIGGER set_book_status3
BEFORE INSERT ON BOOKS
FOR EACH ROW
BEGIN
    UPDATE BOOKS
  SET BOOKS.Book_status = 'Available'
END;
/

-- working
CREATE OR REPLACE TRIGGER update_book_status1
AFTER INSERT ON RECORDS
FOR EACH ROW
BEGIN
  UPDATE BOOKS
  SET Book_status = 'Unavailable'
  WHERE Book_id = :NEW.Book_id;
END;
/

-- not working
--CREATE OR REPLACE TRIGGER update_member_fine1
--AFTER INSERT ON RECORDS
--FOR EACH ROW
--
--  DECLARE total_fine DECIMAL(10, 2);
--    BEGIN
--
--  -- Calculate the total fine for the member
--  SELECT SUM(fine) INTO total_fine
--  FROM RECORDS
--  WHERE Mem_id = :NEW.Mem_id;
--
--  -- Update the member's fine in the MEMBER table
--  UPDATE MEMBER
--  SET fine_amount = total_fine
--  WHERE Mem_id = :NEW.Mem_id;
--END;
--/

-- working
CREATE OR REPLACE TRIGGER update_member_fine1
AFTER INSERT ON RECORDS
FOR EACH ROW

  DECLARE total_fine DECIMAL(10, 2);
    BEGIN

  -- Calculate the total fine for the member
  SELECT SUM(fine) INTO total_fine
  FROM RECORDS
  WHERE Mem_id = :NEW.Mem_id;

  -- Update the member's fine in the MEMBER table
  UPDATE RECORDS
  SET fine = total_fine
  WHERE Mem_id = :NEW.Mem_id;
END;
/


-- for protection of the passwords:
ALTER TABLE ADMIN
ADD Admin_password_hash VARCHAR(100);

UPDATE ADMIN
SET Admin_password = 'password123'
WHERE Admin_id = 1;

select * from admin;

CREATE VIEW ADMIN_LOGIN AS
SELECT Admin_id, Admin_name, Admin_role,Admin_password
FROM ADMIN;


-- queries :

--What are the books written by Author John Smith
SELECT b.Book_title, a.Author_name
FROM BOOKS b
JOIN WrittenBy w ON b.Book_id = w.Book_id
JOIN AUTHOR a ON w.Author_id = a.Author_id
WHERE a.Author_name = 'John Smith';

--What are the books written by Authors who have a qualification of PhD
SELECT b.Book_title, a.Author_name
FROM BOOKS b
JOIN WrittenBy wb ON b.Book_id = wb.Book_id
JOIN AUTHOR a ON wb.Author_id = a.Author_id
WHERE a.qualification = 'PhD';

--What is the total sales amount for each vendor
SELECT v.Vendor_id, v.Vendor_name, SUM(b.Book_price) AS Total
FROM VENDOR v
JOIN SALES s ON v.Vendor_id = s.Vendor_id
JOIN BOOKS b ON s.Book_id = b.Book_id
GROUP BY v.Vendor_id, v.Vendor_name;

--What are the books sold by vendor Bhuvanesh
SELECT b.Book_title, v.Vendor_name
FROM BOOKS b
JOIN SALES s ON b.Book_id = s.Book_id
JOIN VENDOR v ON s.Vendor_id = v.Vendor_id
WHERE v.Vendor_name = 'Bhuvanesh';

--Obtain all the records with respective book, member, employee information
SELECT r.Req_id, r.Received_date, r.issued_date, r.fine,
       b.Book_title, m.Mem_first_name, m.Mem_last_name, e.Emp_name
FROM RECORDS r
JOIN BOOKS b ON r.Book_id = b.Book_id
JOIN MEMBER m ON r.Mem_id = m.Mem_id
JOIN EMPLOYEE e ON r.Emp_id = e.Emp_id;

--What are the books published by Publisher A
SELECT b.Book_title, p.Pub_name
FROM BOOKS b
JOIN PUBLISHER p ON b.Book_id = p.Pub_id
WHERE p.Pub_name = 'Publisher A';

--What is the total fine collected by each member
SELECT m.Mem_id, m.Mem_first_name, m.Mem_last_name, SUM(r.fine) AS Total
FROM MEMBER m
JOIN RECORDS r ON m.Mem_id = r.Mem_id
GROUP BY m.Mem_id, m.Mem_first_name, m.Mem_last_name;



