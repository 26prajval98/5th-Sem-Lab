-- ADDING HIRER
INSERT INTO
    hirer(
        First_Name,
        Last_Name,
        email,
        phone_number,
        Hirer_id,
        Pin_code,
        House_No,
        Locality,
        City,
        Password
    )
VALUES
    (
        "hirer_first",
        "hirer_last",
        "testhirer@hire.com",
        98,
        "ID01",
        66,
        45,
        "hab",
        "Blore",
        "somepw"
    );

-- ADDING MAID
INSERT INTO
    maid(
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
        "ID02",
        99,
        "hab",
        "Blore",
        NULL,
        "somepw"
    );

-- ADDING CARD DETAILS
INSERT INTO hirer_card_details(
        card_details,
		Hirer_id
    )
VALUES
    (
        "SBI26771",
		"ID01"
    );

-- 
INSERT INTO maid_payment(
        card_details,
		Hirer_id
    )
VALUES
    (
        "SBI26771",
		"ID01"
    );