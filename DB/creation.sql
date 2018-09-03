CREATE TABLE Hirer (
    First_Name VARCHAR(100) NOT NULL,
    Last_Name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number INT(100) NOT NULL,
    Hirer_id VARCHAR(100) NOT NULL,
    Pin_code INT(100) NOT NULL,
    House_No VARCHAR(100) NOT NULL,
    Locality VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    PRIMARY KEY (Hirer_id),
    UNIQUE (email),
    UNIQUE (phone_number)
);CREATE TABLE Maid (
    First_Name VARCHAR(100) NOT NULL,
    Last_Name VARCHAR(100) NOT NULL,
    phone_number INT(100) NOT NULL,
    Bank_account_details VARCHAR(100) NOT NULL,
    Maid_id VARCHAR(100) NOT NULL,
    Pin_code INT(100) NOT NULL,
    Locality VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    Password VARCHAR(100) NOT NULL,
    PRIMARY KEY (Maid_id)
);CREATE TABLE Services (
    service_id VARCHAR(100) NOT NULL,
    Timings INT(100) NOT NULL,
    Earning_per_day INT(100) NOT NULL,
    Hirer_id VARCHAR(100) NOT NULL,
    Maid_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (service_id),
    FOREIGN KEY (Hirer_id) REFERENCES Hirer(Hirer_id),
    FOREIGN KEY (Maid_id) REFERENCES Maid(Maid_id)
);CREATE TABLE User_experience (
    feedback_id VARCHAR(100) NOT NULL,
    Rating INT(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    Hirer_id VARCHAR(100) NOT NULL,
    Maid_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (feedback_id, Hirer_id),
    FOREIGN KEY (Hirer_id) REFERENCES Hirer(Hirer_id),
    FOREIGN KEY (Maid_id) REFERENCES Maid(Maid_id)
);CREATE TABLE Transaction (
    Transaction_Id VARCHAR(100) NOT NULL,
    Amount INT(100) NOT NULL,
    date_and_time DATETIME NOT NULL,
    Hirer_id INT(100) NOT NULL,
    PRIMARY KEY (Transaction_Id, Hirer_id),
    FOREIGN KEY (Hirer_id) REFERENCES Hirer(Hirer_id)
);CREATE TABLE Maid_Payment (
    Amount INT(100) NOT NULL,
    Payment_id VARCHAR(100) NOT NULL,
    date DATETIME NOT NULL,
    Maid_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (Payment_id, Maid_id),
    FOREIGN KEY (Maid_id) REFERENCES Maid(Maid_id)
);CREATE TABLE Requirements (
    Attribute VARCHAR(100) NOT NULL,
    Timings INT(100) NOT NULL,
    req_id VARCHAR(100) NOT NULL,
    Hirer_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (req_id, Hirer_id),
    FOREIGN KEY (Hirer_id) REFERENCES Hirer(Hirer_id)
);CREATE TABLE Hirer_card_details (
    card_details VARCHAR(100) NOT NULL,
    Hirer_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (card_details, Hirer_id),
    FOREIGN KEY (Hirer_id) REFERENCES Hirer(Hirer_id)
);CREATE TABLE Maid_Services (
    Services VARCHAR(100) NOT NULL,
    Maid_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (Services, Maid_id),
    FOREIGN KEY (Maid_id) REFERENCES Maid(Maid_id)
);CREATE TABLE Maid_Work_timings (
    Work_timings INT(100) NOT NULL,
    Maid_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (Work_timings, Maid_id),
    FOREIGN KEY (Maid_id) REFERENCES Maid(Maid_id)
);CREATE TABLE Services_Services_Names (
    Services_Names VARCHAR(100) NOT NULL,
    service_id VARCHAR(100) NOT NULL,
    PRIMARY KEY (Services_Names, service_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id)
);