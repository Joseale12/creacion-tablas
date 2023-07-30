CREATE TABLE supplier (
supplierID SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL,
addres_house VARCHAR(150) NOT NULL,
city VARCHAR(50) NOT NULL,
province VARCHAR(50) NOT NULL
);


CREATE TABLE part_supplied (
parts_supplied_id SERIAL PRIMARY KEY,
suplplier_code INTEGER NOT NULL  REFERENCES supplier(supplierID),
amount VARCHAR(10) NOT NULL,
deliver_date DATE NOT NULL,
parts_supplied INTEGER  NOT NULL REFERENCES part(part_id)
);


CREATE TABLE part (
part_id SERIAL PRIMARY KEY NOT NULL,
code VARCHAR(10) NOT NULL,
name VARCHAR(150) NOT NULL,
color VARCHAR(20) NOT NULL,
price MONEY NOT NULL,
category INTEGER NOT NULL REFERENCES category(category_id)
);

CREATE TABLE category (
category_id SERIAL PRIMARY KEY,
name VARCHAR(150) NOT NULL
);