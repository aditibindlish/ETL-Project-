CREATE TABLE category (
    category_id VARCHAR(30) NOT NULL, 
	category VARCHAR(30) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) NOT NULL, 
	subcategory VARCHAR(30) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contact_info (
    contact_id INTEGER NOT NULL, 
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL, 
	FOREIGN KEY (contact_id) REFERENCES contact_info(contact_id),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal FLOAT(24) NOT NULL,
	pledged FLOAT(24) NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(30) NOT NULL,
	currency VARCHAR(30) NOT NULL,
	Launched_Date DATE NOT NULL,
	End_Date DATE NOT NULL,
	category_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	PRIMARY KEY (cf_id)
);

select * from category
select * from subcategory
select * from contact_info
select * from campaign

-- drop table campaign
