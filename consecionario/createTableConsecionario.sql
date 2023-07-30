CREATE TABLE automobiles (
automobilID SERIAL PRIMARY KEY,
brand VARCHAR(20) NOT NULL,
model VARCHAR(20) NOT NULL,
price MONEY NOT NULL,
discount VARCHAR(10),
physical_power VARCHAR(150) NOT NULL,
cylinder_capacity VARCHAR(150) NOT NULL,
UNIQUE (model)
);



CREATE TABLE characteristic (
charateristicID SERIAL PRIMARY KEY,
model INTEGER NOT NULL REFERENCES automobiles(automobilID),
driver_airbag BOOLEAN DEFAULT 'TRUE',
central_locking BOOLEAN DEFAULT 'TRUE'
);


CREATE TABLE extra (
extraID SERIAL PRIMARY KEY,
air_conditioning BOOLEAN DEFAULT 'TRUE',
passenger_airbag BOOLEAN DEFAULT 'TRUE',
metallic_paint BOOLEAN DEFAULT 'TRUE'
);

CREATE TABLE model_stock (
frame_number SERIAL PRIMARY KEY,
local_host VARCHAR(150) NOT NULL,
name VARCHAR(150) NOT NULL,
home VARCHAR(150) NOT NULL
);

CREATE TABLE sellers (
sellerID SERIAL PRIMARY KEY,
name VARCHAR (50) NOT NULL,
ine VARCHAR(10) NOT NULL,
home VARCHAR(150) NOT NULL,
sale_amount VARCHAR(3) NOT NULL
);

CREATE TABLE card_sold (
card_soldID SERIAL PRIMARY KEY,
sold BOOLEAN DEFAULT 'TRUE',
card_salesman INTEGER NOT NULL REFERENCES sellers(sellerID),
sale_price MONEY NOT NULL,
paymenth_method VARCHAR(50) NOT NULL,
extra VARCHAR(50),
price_extra MONEY,
delivery_date DATE NOT NULL,
tuition VARCHAR(50) NOT NULL,
stock BOOLEAN DEFAULT 'TRUE',
factory BOOLEAN DEFAULT 'TRUE'
);