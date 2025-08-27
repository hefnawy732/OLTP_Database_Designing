CREATE DATABASE research_projects;
USE research_projects;


-- Employee table
CREATE TABLE employee (
    SSN CHAR(11) PRIMARY KEY, --123-45-6789, Also SSN is catagorical of nominal type even though it consists of numbers
	first_name VARCHAR(50) NOT NULL,
	last_name  VARCHAR(50) NOT NULL,
    employee_salary DECIMAL(12,2) NOT NULL
);


-- Zipcode table
CREATE TABLE zipcode (
	zipcode CHAR(10) PRIMARY KEY, --12345-6789, Also zipcode is catagorical of nominal type even though it consists of numbers
	city VARCHAR(50) NOT NULL,
	[state] VARCHAR(50) NOT NULL
);

-- Agency Address table
CREATE TABLE agency_address (
	address_id INT IDENTITY(1,1) PRIMARY KEY, -- autoincrement
	zipcode CHAR(10) NOT NULL, -- Each address must have one and only one zipcode
	street VARCHAR(100),
	FOREIGN KEY (zipcode) REFERENCES zipcode(zipcode)
);


-- Funding Agency table
CREATE TABLE funding_agency (
	agency_id INT IDENTITY(1,1) PRIMARY KEY,
	address_id INT NOT NULL, --Each funding agency must have one and only one address “Mandatory”
	agency_name VARCHAR(50) NOT NULL,
	FOREIGN KEY (address_id) REFERENCES agency_address(address_id)
	);


-- Project Information table
CREATE TABLE project_info (
	agency_id INT,
	project_name VARCHAR(50),
	project_duration INT, -- Optional to have a value
	project_budget DECIMAL(14,2), -- Optional to have a value
	PRIMARY KEY (agency_id, project_name), -- Each project_name is unique within agency, Each Project info must have one and only one agency "agency_id Not null by default"
	FOREIGN KEY (agency_id) REFERENCES funding_agency(agency_id)
);


-- Project Assginment table
CREATE TABLE proejct_assignment (
	agency_id INT,
	project_name VARCHAR(50),
	SSN CHAR(11), -- Each project assignment has one and only one employee “Mandatory”
	PRIMARY KEY (agency_id, project_name,SSN), 
	-- Each project assignment has one and only one employee “Mandatory”
	-- Each project assignment has one and only one employee “Mandatory”
	FOREIGN KEY (agency_id, project_name) REFERENCES project_info(agency_id, project_name),
	FOREIGN KEY (SSN) REFERENCES employee(SSN)
);