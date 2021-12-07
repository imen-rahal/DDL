CREATE TABLE Product (
	Product_Id VARCHAR2 (20) CONSTRAINT pk_product PRIMARY KEY,
              Product_Name VARCHAR2 (20) CONSTRAINT ntn_product NOT NULL,
              Price NUMBER CHECK (Price > 0)
) ;

CREATE TABLE Customer (
	Customer_id VARCHAR2 (20) CONSTRAINT pk_customer PRIMARY KEY,
	Customer_Name VARCHAR2 (20) NOT NULL,
	Customer_Tcl NUMBER
);

CREATE TABLE Orders (
	Customer_id VARCHAR2 (20) CONSTRAINT pk1_customer PRIMARY KEY,
              Product_Id VARCHAR2 (20) CONSTRAINT pk1_product PRIMARY KEY,
              Quantity Number,
              Total_amount Number
CONSTRAINT fk_orders FOREIGN KEY (Customer_id, Product_Id) REFERENCES Customer (Customer_id) Product (Product_Id)
) ;




// 2After creating tables, write  commands

ALTER TABLE Product ADD Category VARCHAR2(20) ;

ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE
