-- Section A

CREATE TABLE Aliases
(Alias_ID NUMBER(6),
Criminal_ID NUMBER(6,0),
Alias VARCHAR(10));


CREATE TABLE Criminals
(criminal_ID NUMBER(6,0),
last VARCHAR(15),
first VARCHAR(10),
street VARCHAR(30),
city VARCHAR(20),
state CHAR(2),
zip CHAR(5),
phone CHAR(10),
v_status CHAR(1) DEFAULT 'N',
p_status CHAR(1) DEFAULT 'N');


CREATE TABLE crimes
(crime_ID NUMBER(9,0),
criminal_ID NUMBER(6,0),
classification CHAR(1),
data_charged DATE,
status CHAR(2),
hearing_date DATE,
appeal_cut_data DATE);


CREATE TABLE sentences
(sentence_ID NUMBER(6),
criminal_ID NUMBER(6),
type CHAR(1),
prob_ID NUMBER(5),
start_date DATE,
end_date DATE,
violations NUMBER(3));


CREATE TABLE prob_officers
(prob_ID NUMBER(5),
last VARCHAR(15),
first VARCHAR(10),
street VARCHAR(30),
city VARCHAR(20),
state CHAR(2),
zip CHAR(5),
phone CHAR(10),
email VARCHAR(30),
status CHAR(1) DEFAULT 'A');


CREATE TABLE crime_charges
(charge_ID NUMBER(10,0),
crime_ID NUMBER(9,0),
crime_code NUMBER(3,0),
charge_status CHAR(2),
fine_amount NUMBER(7,2),
court_fee NUMBER(7,2),
amount_paid NUMBER(7,2),
pay_due_date DATE);


CREATE TABLE crime_officers
(crime_ID NUMBER(9,0),
officer_ID NUMBER(8,0));


CREATE TABLE officers
(officer_ID NUMBER(8,0),
last VARCHAR(15),
first VARCHAR(10),
precinct CHAR(4),
badge VARCHAR(14),
phone CHAR(10),
status CHAR(1) DEFAULT 'A');


CREATE TABLE appeals
(appeal_ID NUMBER(5),
crime_ID NUMBER(9,0),
filing_date DATE,
hearing_date DATE,
status CHAR(1) DEFAULT 'P');


CREATE TABLE crime_codes
(crime_code NUMBER(3,0),
Code_description VARCHAR(30));


-- Section B


ALTER TABLE crimes
MODIFY classification DEFAULT 'U';


ALTER TABLE crimes
ADD (date_recorded DATE DEFAULT SYSDATE);


ALTER prob_officers
ADD (pager# NUMBER(10));


ALTER TABLE aliases
MODIFY(alias VARCHAR(20));
