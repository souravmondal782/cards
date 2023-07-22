DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  mobile_number VARCHAR(13) NOT NULL,
  email_id VARCHAR(100) NOT NULL,
  created_date DATE DEFAULT NULL
);

CREATE TABLE CARDS (
  
  customer_id INT NOT NULL,
  card_number INT AUTO_INCREMENT PRIMARY KEY,
  card_type VARCHAR(50) NOT NULL,
  expiry_date DATE DEFAULT DATEADD('DAY', 1, CURDATE())
);

INSERT INTO customer (name, mobile_number, email_id, created_date)
VALUES ('robin', '0987654321', 'robin@test.com', 'CURRENT_DATE' );




INSERT INTO CARDS (customer_id, card_number, card_type, expiry_date)
VALUES ( '1', '4000500020006000', 'CREDIT CARD', CURDATE());

INSERT INTO CARDS ( customer_id, card_number, card_type, expiry_date)
VALUES ('2', '8000500040008000', 'DEBIT CARD', CURDATE());

INSERT INTO CARDS ( customer_id, card_number, card_type, expiry_date)
VALUES ( '3', '6000200090006000', 'CREDIT CARD', CURDATE());

INSERT INTO CARDS ( customer_id, card_number, card_type, expiry_date)
VALUES ( '4', '3000500040001000', 'DEBIT CARD', CURDATE());
