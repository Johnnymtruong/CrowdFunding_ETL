-- DROP TABLES AND CASCADES IF EXISTS 
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS campaign CASCADE;

-- CREATE ALL TABLES IN THE CORRECT ORDER TO HANDLE FOREIGN KEYS
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL
);
CREATE TABLE category (
	category_id VARCHAR(20) PRIMARY KEY,
	category VARCHAR(100) NOT NULL
);
CREATE TABLE subcategory (
	subcategory_id VARCHAR(20) PRIMARY KEY,
	subcategory VARCHAR(100) NOT NULL
);
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(100) NOT NULL,
	discription VARCHAR(100) NOT NULL,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(20) NOT NULL,
	backers_count INT,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(20) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(20) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- VERIFY TABLE CREATION BY RUNNING A SELECT STATEMENT FOR EACH TABLE
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;