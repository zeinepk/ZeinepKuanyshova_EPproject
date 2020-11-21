create table Transport(
  tr_id INT,
  tr_name VARCHAR(255),
  tr_model TEXT,
  tr_num INT,
  totalseats INT,
  availableseats INT,
  PRIMARY KEY(tr_id)
);
INSERT INTO transport(tr_id, tr_name, tr_model, tr_num, totalseats, availableseats)
    VALUES
(1,'Mercedes-Benz','SLK-Class','2002','14','13'),
(2,'Pontiac','Grand Prix','1965','10','8'),
(3,'Pontiac','Parisienne','1985','46','11'),
(4,'Chevrolet','Lumina','1995','18','8'),
(5,'Saab','9-3','2004','38','14'),
(6,'GMC','Sonoma','1999','7','9'),
(7,'Maserati','GranTurismo','2008','27','8'),
(8,'Acura','MDX','2002','2','2'),
(9,'Chevrolet','Tahoe','2007','19','21'),
(10,'Toyota','Sienna','2004','44','16'),
(11,'Subaru','Outback','2006','15','6'),
(12,'Saab','9-3','2001','40','29'),
(13,'BMW','3 Series','2010','44','30'),
(14,'Pontiac','G6','2007','37','27'),
(15,'Ford','Crown Victoria','1996','32','20'),
(16,'Mazda','MPV','1993','40','27'),
(17,'Ford','Escape','2007','17','3'),
(18,'Chevrolet','Corvette','2007','47','25'),
(19,'Porsche','Cayenne','2003','38','29'),
(20,'Honda','Insight','2000','50','10');

CREATE TABLE TransportType(
  trtype_id decimal(12),
  tr_name varchar(50),
  tr_id INT,
  PRIMARY KEY(trtype_id),
  FOREIGN KEY(tr_id) REFERENCES Transport(tr_id)
);
INSERT INTO TransportType(trtype_id, tr_name)
    VALUES
(1, 'deluxe'),
(2, 'public'),
(3, 'normal'),
(4, 'normal'),
(5, 'deluxe'),
(6, 'public'),
(7, 'public'),
(8, 'deluxe'),
(9, 'normal'),
(10, 'deluxe'),
(11, 'deluxe'),
(12, 'public'),
(13, 'normal'),
(14, 'public'),
(15, 'public'),
(16, 'deluxe'),
(17, 'normal'),
(18, 'public'),
(19, 'deluxe'),
(20, 'normal');

CREATE TABLE Account (
  acc_id INT,
  acc_name VARCHAR(255),
  password TEXT,
  repassword TEXT,
  PRIMARY KEY(acc_id)
);
INSERT INTO Account(acc_id, acc_name,password,repassword)
    VALUES
(1, 'crumming0', 'A89IahkG9eNB', 'aX566c'),
(2, 'rslamaker1', 'hLMVYjk5U4l', 'DNujlidrg'),
(3, 'rmatieu2', 'ThTfPfd7', 'jfu3rNOLC8P'),
(4, 'ocordeux3', 'JOQR0hSDQGE', 'CSgOtorOC'),
(5, 'esolly4', 'lcEfR7nfJqX', 'VRVWKA2ufG'),
(6, 'ljumont5', 'vg38rA9', 'YTOzfEBn'),
(7, 'sbrenston6', 'syyLU1PA', 'Mzy8JlwKEy28'),
(8, 'ghaith7', '8iOSWgCSfS', '6Qwg5hxd3'),
(9, 'smarris8', 'MNIkYZaEdpGZ', 'J5o0bY'),
(10, 'cdowdall9', 'vzKJlHwLH', 'XAe0tLc8jAZw'),
(11, 'chargravesa', 'ithrdl3bGwBp', 'YN8nMjQj'),
(12, 'jtextonb', '3aHk1aRkxh', 'Gos4pJGBc7d8'),
(13, 'eskeatesc', 'g2xq7cS', 'nwfp11Z6LX'),
(14, 'mtethacotd', '3oVHyp77', 'b3puN3i'),
(15, 'srozziere', 'Uf1Ltp', 'pD83by1zUyl'),
(16, 'rscardifeildf', 'I8m5vVSi9HK', 'EAPo21MWuVfL'),
(17, 'uhanabyg', 'T47I8tvl', 'FKq0W0s2GZy'),
(18, 'gchancelierh', 'I2CAQWr', 'JelWHYkeF'),
(19, 'gaindraisi', 'StXN63cyr6', 'mrAUurX'),
(20, 'gchaizej', 'U31k8G', 'wkBQfZEE0');

CREATE TABLE Destination(
  dest_id decimal(12),
  dest_name varchar(50),
  acc_id INT,
  PRIMARY KEY(dest_name),
  FOREIGN KEY(acc_id) REFERENCES Account(acc_id)
);

INSERT INTO Destination(dest_id, dest_name)
    VALUES
(1, 'Lantern Lane-George Street'),
(2, 'Main Street West-11th Street'),
(3, 'Front Street South-7th Avenue'),
(4, 'Eagle Street-Forest Avenue'),
(5, 'Park Avenue-Taylor Street'),
(6, 'Catherine Street-Beechwood Drive'),
(7, 'Route 29-Cedar Street'),
(8, '9th Street-Elizabeth Street'),
(9, 'Railroad Street-Magnolia Avenue'),
(10, 'Route 10-14th Street'),
(11, 'Lincoln Avenue-4th Avenue'),
(12, 'Maple Street-Spring Street'),
(13, 'Schoolhouse Lane-York Street'),
(14, 'Locust Lane-Woodland Road'),
(15, 'Meadow Lane-Strawberry Lane'),
(16, 'Carriage Drive-Pennsylvania Avenue'),
(17, 'Cleveland Avenue-Mill Road'),
(18, 'Columbia Street-Grant Street'),
(19, 'Franklin Court-6th Street'),
(20, 'Beech Street-Fairway Drive');

CREATE TABLE route_ttable (
   time_id decimal(12),
   firstdest varchar(50),
   lastdest varchar(50),
   day TEXT NOT NULL,
   platform_id decimal(12),
   tr_id INT,
   PRIMARY KEY(time_id),
   FOREIGN KEY(tr_id) REFERENCES Transport(tr_id)
);
INSERT INTO route_ttable(time_id, firstdest, lastdest, day, platform_id, tr_id)
    VALUES
(1, '8:00 AM','8:00 PM','Monday','11','1'),
(2, '7:00 AM','7:00 PM','Tuesday','12','2'),
(3, '6:00 AM','6:00 PM','Wednsday','13','3'),
(4, '5:00 AM','7:00 PM','Thursday','14','4'),
(5, '7:30 AM','8:00 PM','Friday','15','5'),
(6, '8:20 AM','6:30 PM','Sunday','16','6'),
(7, '6:30 AM','6:30 PM','Saturday','17','7'),
(8, '5:45 AM','7:00 PM','Monday','18','8'),
(9, '6:55 AM','5:55 PM','Tuesday','19','9'),
(10, '7:45 AM','7:45 PM','Wednsday','20','10'),
(11, '8:30 AM','8:00 PM','Thursday','21','11'),
(12, '9:00 AM','8:40 PM','Friday','22','12'),
(13, '9:30 AM','6:00 PM','Sunday','23','13'),
(14, '7:50 AM','6:30 PM','Saturday','24','14'),
(15, '5:50 AM','5:50 PM','Monday','25','15'),
(16, '8:20 AM','4:40 PM','Tuesday','26','16'),
(17, '9:00 AM','8:30 PM','Wednsday','27','17'),
(18, '6:00 AM','4:40 PM','Thurday','28','18'),
(19, '8:45 AM','8:30 AM','Friday','29','19'),
(20, '10:00 AM','7:00 PM','Sunday','30','20');

CREATE TABLE Needed_time(
ntime_id DECIMAL(12),
acc_id INT,
departure_t TIME,
arrival_t TIME,
DAY TEXT NOT NULL,
user_name VARCHAR(255),
PRIMARY KEY (ntime_id),
FOREIGN KEY (acc_id) REFERENCES Account(acc_id)
);
INSERT INTO Needed_time(ntime_id, departure_t, arrival_t, day, acc_id, user_name)
VALUES
(1, '6:18 AM', '4:20 PM', 'Monday','1','Carlyn'),
(2, '9:07 AM', '11:05 PM', 'Tuesday','2','Lynnea'),
(3, '6:15 AM', '1:47 PM', 'Wednesday','3','Ericha'),
(4, '9:10 AM', '6:59 AM', 'Thursday','4','Stevana'),
(5, '10:06 AM', '7:19 AM', 'Friday','5','Ewell'),
(6, '10:40 AM', '12:18 PM', 'Saturday','6','Kenyon'),
(7, '11:24 PM', '2:52 PM', 'Sunday','7','Emmeline'),
(8, '1:46 AM', '9:25 PM', 'Monday','8','Kary'),
(9, '4:28 AM', '3:21 AM', 'Tuesday','9','Ambrosi'),
(10, '7:34 AM', '7:05 AM', 'Wednesday','10','Jefferson'),
(11, '3:31 AM', '12:35 PM', 'Thursday','11','Zorine'),
(12, '5:02 AM', '2:34 PM', 'Friday','12', 'Fabio'),
(13, '12:26 AM', '3:58 PM', 'Saturday','13','Micki'),
(14, '2:49 AM', '6:56 AM', 'Sunday','14','Leeland'),
(15, '2:04 PM', '3:21 PM', 'Monday','15','Berry'),
(16, '10:02 AM', '2:16 PM', 'Tuesday','16','Albertine'),
(17, '6:21 PM', '5:50 AM', 'Wednesday','17','Adena'),
(18, '11:39 PM', '8:20 AM', 'Thursday','18','Hillyer'),
(19, '5:16 PM', '2:07 PM', 'Friday', '19','Shaw'),
(20, '10:43 AM', '3:07 AM', 'Saturday','20','Ynes');

CREATE TABLE bus_stops(
st_id INT,
stop_num DECIMAL(12),
tr_id INT,
tr_name VARCHAR(255),
PRimary KEY(st_id),
FOREIGN KEy(tr_id) REFERENCES Transport(tr_id)
);
INSERT INTO bus_stops(st_id, stop_num, tr_name, tr_id)
VALUES
(1, '15', 'Busmate', '1'),
(2, '20', 'Kompan', '2'),
(3, '11', 'Oneness', '3'),
(4, '15', 'KOMBAN', '4'),
(5, '30', 'Arifin', '5'),
(6, '45', 'Sevenz', '6'),
(7, '41', 'Saho', '7'),
(8, '32', 'King', '8'),
(9, '27', 'Companion', '9'),
(10, '25', 'Star tour', '10'),
(11, '19', 'Zed King', '11'),
(12, '34', 'Tesorito', '12'),
(13, '60', 'Humsafar', '13'),
(14, '34', 'Daviran', '14'),
(15, '29', 'Tiger', '15'),
(16, '31', 'Watsica', '16'),
(17, '26', 'Lamplant', '17'),
(18, '14', 'Littel-Bayern', '18'),
(19, '50', 'Mustan', '19'),
(20, '51', 'Toyoto', '20');

CREATE TABLE Fare(
fare_id INT,
fare VARCHAR(12),
trtype_id DECIMAL(12),
tr_type VARCHAR(50),
Primary key(fare_id),
foreign key(trtype_id) references TransportType(trtype_id)
);
INSERT INTO Fare(fare_id, fare, tr_type, trtype_id )
values
(1,'$1.91', 'deluxe', '1'),
(2,'$2.94', 'public', '2'),
(3,'$2.70', 'normal', '3'),
(4,'$3.02', 'normal', '4'),
(5,'$4.08', 'deluxe', '5'),
(6,'$6.98', 'public', '6'),
(7,'$7.87', 'public', '7'),
(8,'$3.82', 'deluxe', '8'),
(9,'$0.29', 'normal', '9'),
(10,'$8.88', 'deluxe', '10'),
(11,'$6.86', 'deluxe', '11'),
(12,'$8.71', 'public', '12'),
(13,'$3.12', 'normal', '13'),
(14,'$2.61', 'public', '14'),
(15,'$5.06', 'public', '15'),
(16,'$2.12', 'deluxe', '16'),
(17,'$2.30', 'normal', '17'),
(18,'$6.33', 'public', '18'),
(19,'$5.76', 'deluxe', '19'),
(20,'$8.13', 'normal', '20');

CREATE TABLE distance(
dist_id INT,
tr_name VARCHAR(255),
dest_name tEXT,
dist VARCHAR(12),
tr_id int,
primary key(dist_id),
foreign key(dest_name) REFERENCES Destination(dest_name),
foreign key(tr_id) REFERENCES Transport(tr_id)
);
insert into distance(dist_id, tr_name, dest_name, dist)
values 
(1, 'Busmate', 'Lantern Lane-George Street', '120km'),
(2, 'Kompan', 'Main Street West-11th Street', '200km'),
(3, 'Oneness', 'Front Street South-7th Avenue', '103km'),
(4, 'KOMBAN', 'Eagle Street-Forest Avenue', '97km'),
(5, 'Arifin', 'Park Avenue-Taylor Street', '157km'),
(6, 'Sevenz', 'Catherine Street-Beechwood Drive', '300km'),
(7, 'Saho', 'Route 29-Cedar Street', '140km'),
(8, 'King', '9th Street-Elizabeth Street', '170km'),
(9, 'Companion', 'Railroad Street-Magnolia Avenue', '320km'),
(10, 'Star tour', 'Route 10-14th Street', '130km'),
(11, 'Zed king', 'Lincoln Avenue-4th Avenue', '270km'),
(12, 'Tesorito', 'Maple Street-Spring Street', '300km'),
(13, 'Humsafar', 'Schoolhouse Lane-York Street', '1000km'),
(14, 'Daviran', 'Locust Lane-Woodland Road', '1
340km'),
(15, 'Tiger', 'Meadow Lane-Strawberry Lane', '1200km'),
(16, 'Watsica', 'Carriage Drive-Pennsylvania Avenue', '1100km'),
(17, 'Lampland', 'Cleveland Avenue-Mill Road', '1600km'),
(18, 'Littel-Bayern', 'Columbia Street-Grant Street','600km'),
(19, 'Mustan', 'Franklin Court-6th Street', '700km'),
(20, 'Toyoto', 'Beech Street-Fairway Drive', '900km');

create table city(
city_id decimal(12),
city_name VARCHAR(255),
tr_id int,
tr_type text,
Primary key(city_id),
foreign key(tr_id) REFERENCES Transport(tr_id)
);
insert into city(city_id, city_name, tr_id, tr_type)
VALUES
('101', 'Nur-sultan',1, 'Coach'),
('102', 'Almaty', 2, 'School bus'),
('103', 'Semey', 3, 'Shuttle bus'),
('104', 'Karaganda', 4, 'Minibus'),
('105', 'Aktobe', 5, 'Minicoach'),
('106', 'Shymkent', 6, 'Double-decker bus'),
('107', 'New york', 7, 'Single-decker bus'),
('108', 'London', 8, 'Low-floor bus'),
('109', 'Knoxville', 9, 'High-floor bus'),
('110', 'Faiyum', 10, 'Trolleybus'),
('111', 'Nagpur', 11, 'Articulated bus'),
('112', 'Valencia', 12, 'Gyrobus'),
('113', 'Krasnoyarsk', 13, 'Minibus'),
('114', 'BAMAKO', 14, 'Tram'),
('115', 'MГЎlaga', 15, 'Minibus'),
('116', 'Greensboro', 16, 'Trolleybus'),
('117', 'Constanta', 17, 'School bus'),
('118', 'AMSTERDAM', 18, 'Minicoach'),
('119', 'Brno', 19, 'Gyrobus'),
('120', 'MacapГЎ', 20, 'High-floor bus');