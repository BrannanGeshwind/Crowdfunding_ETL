CREATE TABLE Category(
category_id VARCHAR NOT NULL UNIQUE,
category VARCHAR NOT NULL PRIMARY KEY
);

SELECT * FROM Category;

CREATE TABLE Subcategory(
subcategory_id VARCHAR NOT NULL UNIQUE,
subcategory VARCHAR NOT NULL PRIMARY KEY
);

SELECT * FROM Subcategory;

CREATE TABLE Campaign(
cf_id INT NOT NULL,
contact_id INT NOT NULL PRIMARY KEY,
company_name VARCHAR NOT NULL,
description VARCHAR NOT NULL,
goal DECIMAL NOT NULL,
pledged DECIMAL NOT NULL,
outcome VARCHAR NOT NULL,
backers_count INT NOT NULL,
country VARCHAR NOT NULL,
currency VARCHAR NOT NULL,
launch_date DATE NOT NULL,
end_date DATE NOT NULL,
staff_pick VARCHAR NOT NULL,
spotlight VARCHAR NOT NULL,
category_id VARCHAR NOT NULL, 
subcategory_id VARCHAR NOT NULL, 
FOREIGN KEY(category_id) REFERENCES Category(category_id),
FOREIGN KEY(subcategory_id) REFERENCES Subcategory(subcategory_id)
);

SELECT * FROM Campaign;

CREATE TABLE Contacts(
contact_id INT NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
email VARCHAR NOT NULL,
FOREIGN KEY(contact_id) REFERENCES Campaign(contact_id)
);

SELECT * FROM Contacts;