--authors
CREATE TABLE authors (
	author_id INT,
	author_fname VARCHAR(100),
	author_lname VARCHAR(100),
	date_of_birth DATE
);

CREATE TABLE publishers (
	publisher_id INT,
	unique_publisher_name VARCHAR(100),
	country_of_origin VARCHAR(100)
);

CREATE TABLE books (
	book_id INT,
	book_title VARCHAR(100),
	isbn VARCHAR(100),
	publication_date DATE,
	price DECIMAL (10, 2)
);


--patients
CREATE TABLE patients (
	patient_id INT,
	patient_fname VARCHAR(100),
	patient_lname VARCHAR(100),
	date_of_birth DATE,
	phone_number VARCHAR(10),
	added_on DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE doctors (
	doctor_id INT,
	doctor_fname VARCHAR(100),
	doctor_lname VARCHAR(100),
	specialty VARCHAR(100),
	licensed_year DATETIME
);

CREATE TABLE appointments (
	appointment_id INT,
	schedule DATE,
	reason VARCHAR(100),
	status ENUM('Scheduled', 'Completed', 'Canceled', 'No-Show') DEFAULT 'Scheduled'
);


--courses
CREATE TABLE departments (
	department_id INT,
	department_name VARCHAR(100),
	office_location VARCHAR(100)
);

CREATE TABLE courses (
	course_id INT,
	course_code VARCHAR(20),
	course_title VARCHAR(100),
	credits INT
);
