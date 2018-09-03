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
INSERT INTO TRANSACTION
	(
		Transaction_Id,
		Hirer_id,
		Amount,
		date and time
	)
VALUES
	(
		"T_ID1",
		"H_ID1",
		1000,
		'2018-8-18',

	);
-- ADDING REQUIREMENTS
INSERT INTO REQUIREMENTS
	(
		req_id,
		Hirer_id,
		Atrribute,
		Timings
	)

VALUES
	(
		"H_REQ_ID1",
		"H_ID1",
		"attributes",
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
INSERT INTO Maid_payment(
        card_details,
		Hirer_id
    )
VALUES
    (
        "SBI26771",
		"H_ID1"
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
		"Dish washing",
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
		4.5
		"Awesome maid",
		"M_ID1"
	);
	

