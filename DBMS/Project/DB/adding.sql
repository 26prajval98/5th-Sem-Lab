-- ADDING HIRER
INSERT INTO Hirer
	(
		Hirer_id,
        First_Name,
        Last_Name,
        email,
        phone_number,
        Pin_code,
        House_No,
        Locality,
        City,
        Password
    )
VALUES
    (
    	"H_ID1",
        "hirer_first",
        "hirer_last",
        "testhirer@hire.com",
        98,
        66,
        45,
        "hab",
        "Blore",
        "somepw"
    );
-- ADDING HIRER_CARD DETAILS
INSERT INTO Hirer_card_details
	(
        card_details,
		Hirer_id
    )
VALUES
    (
        "SBI26771",
		"H_ID1"
    );
-- ADDING TRANSACTION
INSERT INTO Transaction
	(
		Transaction_Id,
		Hirer_id,
		Amount,
		date_and_time
	)
VALUES
	(
		"T_ID1",
		"H_ID1",
		1000,
		'2018-08-18 15:55:39'
	);
-- ADDING REQUIREMENTS
INSERT INTO Requirements
	(
		req_id,
		Hirer_id,
		Attribute,
		Timings
	)

VALUES
	(
		"H_REQ_ID1",
		"H_ID1",
		"Cleaning",
		2
	);


-- ADDING MAID
INSERT INTO
    Maid(
        First_Name,
        Last_Name,
        phone_number,
        Bank_account_details,
        Maid_id,
        Pin_code,
        Locality,
        City,
        email,
        Password
    )
VALUES
    (
        "maid_first",
        "maid_last",
        98,
        "SBI123",
        "M_ID1",
        99,
        "hab",
        "Blore",
        NULL,
        "somepw"
    );


--ADDING MAID_PAYMENT
INSERT INTO Maid_Payment(
        Amount,
		Payment_id,
        date,
        Maid_id
    )
VALUES
    (
        1000,
		"P_ID01",
        '2018-08-18 15:55:39',
        "M_ID1"
    );

-- ADDING MAID WORK TIMINGS
INSERT INTO Maid_Work_timings
	(
		Work_timings,
		Maid_id
	)
VALUES
	(
		2,
		"M_ID1"
	);

-- ADDING MAID SERVICES

INSERT INTO Maid_Services
	(
		Services,
		Maid_id
	)
VALUES
	(
		"Dish washing,Cooking",
		"M_ID1"
	);
-- ADDING USER EXPERIENCE

INSERT INTO User_experience
	(
		feedback_id,
		Hirer_id,
		Rating,
		description,
		Maid_id
	)
VALUES
	(
		"F_ID1",
		"H_ID1",
		4.5,
		"Awesome maid",
		"M_ID1"
	);
-- ADDING SERVICES SERVICES NAMES

INSERT INTO Services_Services_Names
	(
		Services_Names,
		service_id
	)
VALUES
	(
		"Dish washing",
		"S_ID1"
	),
	(
		"Cooking",
		"S_ID2"
	);

-- ADDING SERVICES

INSERT INTO Services
	(
        service_id,
		Timings,
		Earning_per_day,
		Hirer_id,
		Maid_id
	)
VALUES
	(
        'S_ID01',
		1,
		1000,
		"H_ID1",
		"M_ID1"
	),
	(
        'S_ID02',
		2,
		500,
		"H_ID1",
		"M_ID1"
	);


