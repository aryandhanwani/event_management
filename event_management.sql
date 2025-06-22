-- create database
CREATE DATABASE smart_event_management;

-- use database
USE smart_event_management;

-- create table venues
CREATE Table venues(venue_id INT AUTO_INCREMENT PRIMARY KEY, venue_name VARCHAR(30) NOT NULL, venue_location VARCHAR (50) NOT NULL, capacity INT NOT NULL); 

-- create table organizers
CREATE TABLE organizers (organizer_id INT AUTO_INCREMENT PRIMARY KEY, organizer_name VARCHAR(30) NOT NULL, contact_email VARCHAR(50) NOT NULL, phone_number VARCHAR(10) NOT NULL);

-- create table attendees
CREATE TABLE attendees (attendee_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(30) NOT NULL, email VARCHAR(50), phone_number VARCHAR(10));

-- create table tickets
CREATE TABLE tickets (ticket_id INT AUTO_INCREMENT PRIMARY KEY, event_id INT NOT NULL, attendee_id INT NOT NULL, booking_date DATE NOT NULL , ticket_status VARCHAR (20) NOT NULL, FOREIGN KEY (event_id) REFERENCES events(event_id), FOREIGN KEY (attendee_id) REFERENCES attendees(attendee_id));

-- create table payments
CREATE TABLE payments(payments_id INT AUTO_INCREMENT PRIMARY KEY, ticket_id INT NOT NULL, amount_paid DECIMAL (10,2) NOT NULL, payment_status VARCHAR (20) NOT NULL, payment_date DATE NOT NULL, FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id));

-- create table events
CREATE TABLE events (event_id INT AUTO_INCREMENT PRIMARY KEY, event_name VARCHAR(30) NOT NULL, event_date DATE NOT NULL, venue_id INT NOT NULL, organizer_id INT NOT NULL, ticket_price DECIMAL (10,2) NOT NULL, total_seats INT NOT NULL, avaliable_seats INT NOT NULL, FOREIGN KEY (venue_id) REFERENCES venues(venue_id), FOREIGN KEY (organizer_id) REFERENCES organizers(organizer_id));
    
-- insert into venues table
INSERT INTO venues (venue_id, venue_name, venue_location, capacity)
VALUES (1, "Cidade De Daman","Daman",300),
(2, "Tulsi Hotel", "Daman", 400),
(3, "Ashoka Hotel", "Daman", 250),
(4, "Then Deltin","Daman",450),
(5, "The Gold Beach","Daman", 300),
(6, "The Sea View Resort","Daman", 350),
(7, "Hotel Sea Rock Villa","Daman",420);

-- insert into organizers
INSERT INTO organizers(organizer_id,organizer_name,contact_email,phone_number)
VALUES (101,"Rakesh", "rakesh@gmail.com","999765876"),
(102,"Sunil","sunil@gmail.com","9898764230"),
(103,"Ankita","anikita@gmail.com","7575065304"),
(104,"Umnag","umang@gmail.com","6355833679");

-- insert into attendees
INSERT INTO attendees (attendee_id, name, email, phone_number)
VALUES (1, '  Aarav  ', 'user1@example.com', '9876543211'),
(2, '  Neha  ', 'user2@example.com', '9876543212'),
(3, '  Rohan  ', '', '9876543213'),
(4, '  Sneha  ', 'user4@example.com', '9876543214'),
(5, '  Tara  ', 'user5@example.com', '9876543215'),
(6, '  Kabir  ', '', '9876543216'),
(7, '  Anaya  ', 'user7@example.com', '9876543217'),
(8, '  Yash  ', 'user8@example.com', '9876543218'),
(9, '  Diya  ', '', '9876543219'),
(10, '  Meera  ', 'user10@example.com', '9876543220'),
(11, '  Raghav  ', 'user11@example.com', '9876543221'),
(12, '  Priya  ', '', '9876543222'),
(13, '  Nikhil  ', 'user13@example.com', '9876543223'),
(14, '  Tanvi  ', 'user14@example.com', '9876543224'),
(15, '  Ayaan  ', '', '9876543225'),
(16, '  Riya  ', 'user16@example.com', '9876543226'),
(17, '  Ishaan  ', 'user17@example.com', '9876543227'),
(18, '  Shreya  ', '', '9876543228'),
(19, '  Kunal  ', 'user19@example.com', '9876543229'),
(20, '  Aarohi  ', 'user20@example.com', '9876543230'),
(21, '  Sai  ', '', '9876543231'),
(22, '  Vivaan  ', 'user22@example.com', '9876543232'),
(23, '  Isha  ', 'user23@example.com', '9876543233'),
(24, '  Varun  ', '', '9876543234'),
(25, '  Asha  ', 'user25@example.com', '9876543235'),
(26, '  Saanvi  ', 'user26@example.com', '9876543236'),
(27, '  Jay  ', '', '9876543237'),
(28, '  Kiara  ', 'user28@example.com', '9876543238'),
(29, '  Harsh  ', 'user29@example.com', '9876543239'),
(30, '  Ira  ', '', '9876543240'),
(31, '  Krishna  ', 'user31@example.com', '9876543241'),
(32, '  Pooja  ', 'user32@example.com', '9876543242'),
(33, '  Siddharth  ', '', '9876543243'),
(34, '  Aditya  ', 'user34@example.com', '9876543244'),
(35, '  Myra  ', 'user35@example.com', '9876543245'),
(36, '  Radhika  ', '', '9876543246'),
(37, '  Vihaan  ', 'user37@example.com', '9876543247'),
(38, '  Asha  ', 'user38@example.com', '9876543248'),
(39, '  Arjun  ', '', '9876543249'),
(40, '  Rohan  ', 'user40@example.com', '9876543250'),
(41, '  Sneha  ', 'user41@example.com', '9876543251'),
(42, '  Tara  ', '', '9876543252'),
(43, '  Kabir  ', 'user43@example.com', '9876543253'),
(44, '  Anaya  ', 'user44@example.com', '9876543254'),
(45, '  Yash  ', '', '9876543255'),
(46, '  Diya  ', 'user46@example.com', '9876543256'),
(47, '  Meera  ', 'user47@example.com', '9876543257'),
(48, '  Raghav  ', '', '9876543258'),
(49, '  Priya  ', 'user49@example.com', '9876543259'),
(50, '  Nikhil  ', 'user50@example.com', '9876543260'),
(51, '  Tanvi  ', '', '9876543261'),
(52, '  Ayaan  ', 'user52@example.com', '9876543262'),
(53, '  Riya  ', 'user53@example.com', '9876543263'),
(54, '  Ishaan  ', '', '9876543264'),
(55, '  Shreya  ', 'user55@example.com', '9876543265'),
(56, '  Kunal  ', 'user56@example.com', '9876543266'),
(57, '  Aarohi  ', '', '9876543267'),
(58, '  Sai  ', 'user58@example.com', '9876543268'),
(59, '  Vivaan  ', 'user59@example.com', '9876543269'),
(60, '  Isha  ', '', '9876543270'),
(61, '  Varun  ', 'user61@example.com', '9876543271'),
(62, '  Asha  ', 'user62@example.com', '9876543272'),
(63, '  Saanvi  ', '', '9876543273'),
(64, '  Jay  ', 'user64@example.com', '9876543274'),
(65, '  Kiara  ', 'user65@example.com', '9876543275'),
(66, '  Harsh  ', '', '9876543276'),
(67, '  Ira  ', 'user67@example.com', '9876543277'),
(68, '  Krishna  ', 'user68@example.com', '9876543278'),
(69, '  Pooja  ', '', '9876543279'),
(70, '  Siddharth  ', 'user70@example.com', '9876543280'),
(71, '  Aditya  ', 'user71@example.com', '9876543281'),
(72, '  Myra  ', '', '9876543282'),
(73, '  Radhika  ', 'user73@example.com', '9876543283'),
(74, '  Vihaan  ', 'user74@example.com', '9876543284'),
(75, '  Asha  ', '', '9876543285'),
(76, '  Arjun  ', 'user76@example.com', '9876543286'),
(77, '  Rohan  ', 'user77@example.com', '9876543287'),
(78, '  Sneha  ', '', '9876543288'),
(79, '  Tara  ', 'user79@example.com', '9876543289'),
(80, '  Kabir  ', 'user80@example.com', '9876543290'),
(81, '  Anaya  ', '', '9876543291'),
(82, '  Yash  ', 'user82@example.com', '9876543292'),
(83, '  Diya  ', 'user83@example.com', '9876543293'),
(84, '  Meera  ', '', '9876543294'),
(85, '  Raghav  ', 'user85@example.com', '9876543295'),
(86, '  Priya  ', 'user86@example.com', '9876543296'),
(87, '  Nikhil  ', '', '9876543297'),
(88, '  Tanvi  ', 'user88@example.com', '9876543298'),
(89, '  Ayaan  ', 'user89@example.com', '9876543299'),
(90, '  Riya  ', '', '9876543300'),
(91, '  Ishaan  ', 'user91@example.com', '9876543301'),
(92, '  Shreya  ', 'user92@example.com', '9876543302'),
(93, '  Kunal  ', '', '9876543303'),
(94, '  Aarohi  ', 'user94@example.com', '9876543304'),
(95, '  Sai  ', 'user95@example.com', '9876543305'),
(96, '  Vivaan  ', '', '9876543306'),
(97, '  Isha  ', 'user97@example.com', '9876543307'),
(98, '  Varun  ', 'user98@example.com', '9876543308'),
(99, '  Asha  ', '', '9876543309'),
(100, '  Saanvi  ', 'user100@example.com', '9876543310');

-- insert into tickets
INSERT INTO tickets (ticket_id, event_id, attendee_id, booking_date, ticket_status)
VALUES (1, 5, 12, '2025-06-01', 'Confirmed'),
(2, 2, 45, '2025-06-02', 'Pending'),
(3, 18, 33, '2025-06-03', 'Confirmed'),
(4, 7, 29, '2025-06-04', 'Cancel'),
(5, 13, 8, '2025-06-05', 'Confirmed'),
(6, 20, 56, '2025-06-06', 'Pending'),
(7, 1, 77, '2025-06-07', 'Confirmed'),
(8, 25, 6, '2025-06-08', 'Cancel'),
(9, 10, 90, '2025-06-09', 'Confirmed'),
(10, 11, 44, '2025-06-10', 'Confirmed'),
(11, 3, 21, '2025-06-10', 'Pending'),
(12, 6, 9, '2025-06-11', 'Cancel'),
(13, 12, 38, '2025-06-12', 'Confirmed'),
(14, 22, 71, '2025-06-13', 'Confirmed'),
(15, 30, 15, '2025-06-14', 'Pending'),
(16, 27, 62, '2025-06-15', 'Confirmed'),
(17, 19, 48, '2025-06-16', 'Cancel'),
(18, 8, 35, '2025-06-17', 'Confirmed'),
(19, 14, 83, '2025-06-18', 'Confirmed'),
(20, 17, 19, '2025-06-19', 'Pending'),
(21, 23, 96, '2025-06-19', 'Confirmed'),
(22, 26, 5, '2025-06-20', 'Cancel'),
(23, 4, 11, '2025-06-20', 'Confirmed'),
(24, 28, 31, '2025-06-21', 'Pending'),
(25, 15, 2, '2025-06-21', 'Confirmed'),
(26, 29, 59, '2025-06-22', 'Cancel'),
(27, 16, 73, '2025-06-23', 'Confirmed'),
(28, 9, 13, '2025-06-23', 'Pending'),
(29, 24, 66, '2025-06-24', 'Confirmed'),
(30, 21, 36, '2025-06-24', 'Cancel'),
(31, 5, 53, '2025-06-25', 'Confirmed'),
(32, 6, 24, '2025-06-25', 'Confirmed'),
(33, 3, 70, '2025-06-26', 'Pending'),
(34, 1, 10, '2025-06-26', 'Cancel'),
(35, 7, 98, '2025-06-27', 'Confirmed'),
(36, 13, 47, '2025-06-27', 'Confirmed'),
(37, 18, 41, '2025-06-28', 'Pending'),
(38, 2, 17, '2025-06-28', 'Confirmed'),
(39, 20, 84, '2025-06-29', 'Cancel'),
(40, 30, 22, '2025-06-30', 'Confirmed'),
(41, 12, 26, '2025-07-01', 'Pending'),
(42, 8, 1, '2025-07-01', 'Confirmed'),
(43, 22, 64, '2025-07-02', 'Cancel'),
(44, 19, 93, '2025-07-02', 'Confirmed'),
(45, 17, 43, '2025-07-03', 'Confirmed'),
(46, 27, 3, '2025-07-03', 'Pending'),
(47, 23, 50, '2025-07-04', 'Confirmed'),
(48, 10, 91, '2025-07-04', 'Cancel'),
(49, 25, 28, '2025-07-05', 'Confirmed'),
(50, 14, 60, '2025-07-05', 'Pending'),
(51, 26, 39, '2025-07-06', 'Confirmed'),
(52, 11, 99, '2025-07-06', 'Cancel'),
(53, 16, 34, '2025-07-07', 'Confirmed'),
(54, 4, 63, '2025-07-07', 'Pending'),
(55, 29, 92, '2025-07-08', 'Confirmed'),
(56, 28, 95, '2025-07-08', 'Cancel'),
(57, 9, 16, '2025-07-09', 'Confirmed'),
(58, 15, 42, '2025-07-09', 'Pending'),
(59, 7, 67, '2025-07-10', 'Confirmed'),
(60, 24, 79, '2025-07-10', 'Confirmed'),
(61, 6, 4, '2025-07-11', 'Cancel'),
(62, 13, 32, '2025-07-11', 'Confirmed'),
(63, 1, 85, '2025-07-12', 'Confirmed'),
(64, 21, 18, '2025-07-12', 'Pending'),
(65, 3, 52, '2025-07-13', 'Cancel'),
(66, 5, 76, '2025-07-13', 'Confirmed'),
(67, 2, 7, '2025-07-14', 'Confirmed'),
(68, 30, 87, '2025-07-14', 'Pending'),
(69, 20, 55, '2025-07-15', 'Cancel'),
(70, 18, 37, '2025-07-15', 'Confirmed');

-- insert table payments 
INSERT INTO payments (payments_id, ticket_id, amount_paid, payment_status, payment_date)
VALUES (1, 1, 1200, 'success', '2025-06-01'),
(2, 3, 1500, 'success', '2025-06-03'),
(3, 5, 2200, 'pending', '2025-06-05'),
(4, 7, 1700, 'success', '2025-06-07'),
(5, 9, 1900, 'failed', '2025-06-09'),
(6, 10, 2000, 'success', '2025-06-10'),
(7, 13, 1300, 'pending', '2025-06-12'),
(8, 14, 2300, 'success', '2025-06-13'),
(9, 16, 1800, 'success', '2025-06-15'),
(10, 18, 2100, 'success', '2025-06-17'),
(11, 19, 1400, 'failed', '2025-06-18'),
(12, 21, 3000, 'success', '2025-06-19'),
(13, 23, 1250, 'success', '2025-06-20'),
(14, 25, 2600, 'pending', '2025-06-21'),
(15, 27, 1900, 'success', '2025-06-23'),
(16, 29, 2200, 'success', '2025-06-24'),
(17, 31, 1400, 'success', '2025-06-25'),
(18, 32, 1350, 'success', '2025-06-25'),
(19, 35, 2400, 'pending', '2025-06-27'),
(20, 36, 2700, 'success', '2025-06-27'),
(21, 38, 1000, 'success', '2025-06-28'),
(22, 40, 1100, 'success', '2025-06-30'),
(23, 42, 1550, 'success', '2025-07-01'),
(24, 44, 1700, 'success', '2025-07-02'),
(25, 45, 1850, 'success', '2025-07-03'),
(26, 47, 1300, 'success', '2025-07-04'),
(27, 49, 2500, 'success', '2025-07-05'),
(28, 51, 1200, 'pending', '2025-07-06'),
(29, 53, 1950, 'success', '2025-07-07'),
(30, 55, 1750, 'success', '2025-07-08'),
(31, 57, 1650, 'success', '2025-07-09'),
(32, 59, 2100, 'pending', '2025-07-10'),
(33, 60, 2300, 'success', '2025-07-10'),
(34, 62, 1600, 'failed', '2025-07-11'),
(35, 63, 2800, 'success', '2025-07-12'),
(36, 66, 2900, 'success', '2025-07-13'),
(37, 67, 1050, 'success', '2025-07-14'),
(38, 70, 2000, 'success', '2025-07-15'),
(39, 43, 2200, 'success', '2025-07-02'),
(40, 26, 1450, 'pending', '2025-06-22');

-- insert into events   
INSERT INTO events (event_id, event_name, event_date, venue_id, organizer_id, ticket_price, total_seats, avaliable_seats)
VALUES (1, 'Tech Summit', '2025-07-01', 1, 101, 1500, 300, 180),
(2, 'AI Conclave', '2025-07-03', 2, 102, 2000, 400, 250),
(3, 'Startup Expo', '2025-07-05', 3, 103, 1800, 250, 120),
(4, 'Youth Fest', '2025-07-06', 4, 104, 2200, 450, 390),
(5, 'Cultural Carnival', '2025-07-08', 5, 101, 1700, 300, 160),
(6, 'Code Jam', '2025-07-10', 6, 102, 3000, 350, 100),
(7, 'Design Day', '2025-07-12', 7, 103, 1400, 420, 220),
(8, 'Entrepreneur Forum', '2025-07-14', 1, 104, 2500, 300, 70),
(9, 'Music Mania', '2025-07-15', 2, 101, 1600, 400, 120),
(10, 'Art & Expression', '2025-07-17', 3, 102, 1100, 250, 90),
(11, 'Innovation Day', '2025-07-18', 4, 103, 2700, 450, 300),
(12, 'Food Fest', '2025-07-20', 5, 104, 1300, 300, 80),
(13, 'Business Bash', '2025-07-22', 6, 101, 2000, 350, 210),
(14, 'Photography Meet', '2025-07-23', 7, 102, 1900, 420, 310),
(15, 'Green Summit', '2025-07-25', 1, 103, 1600, 300, 0),
(16, 'Travel Talk', '2025-07-27', 2, 104, 1400, 400, 310),
(17, 'Gaming Arena', '2025-07-29', 3, 101, 1800, 250, 110),
(18, 'Literature Night', '2025-07-30', 4, 102, 1200, 450, 400),
(19, 'Wellness Fest', '2025-08-01', 5, 103, 2300, 300, 250),
(20, 'Finance Forum', '2025-08-03', 6, 104, 2700, 350, 300),
(21, 'Comedy Night', '2025-08-05', 7, 101, 1300, 420, 270),
(22, 'Dance Battle', '2025-08-07', 1, 102, 1600, 300, 150),
(23, 'Fashion Walk', '2025-08-08', 2, 103, 2100, 400, 0),
(24, 'Edu-Talks', '2025-08-10', 3, 104, 1900, 250, 80),
(25, 'Investor Pitch', '2025-08-12', 4, 101, 2200, 450, 340),
(26, 'Marathon Meet', '2025-08-13', 5, 102, 1500, 300, 140),
(27, 'Tech for Good', '2025-08-15', 6, 103, 2800, 350, 0),
(28, 'Robotics Rally', '2025-08-17', 7, 104, 1750, 420, 210),
(29, 'Startup Stories', '2025-08-18', 1, 101, 2400, 300, 150),
(30, 'Film Talkies', '2025-08-20', 2, 102, 1250, 400, 0);

--1st Question
-- update a detail
UPDATE attendees
SET email="user.sample@gmail.com"
WHERE attendee_id= 30;

-- delete a entry
DELETE FROM tickets
WHERE ticket_id =54;

-- search for events 

SELECT * FROM events WHERE event_name='Design Day';

SELECT * FROM organizers WHERE organizer_id=103;

SELECT * FROM venues WHERE venue_name="Cidade De Daman";

SELECT * FROM attendees WHERE attendee_id=39;

SELECT * FROM tickets WHERE ticket_status='Cancel';

-- 2nd Question
-- get upcoming events in sepcific city
SELECT e.event_id, e.event_name, e.event_date, v.venue_location FROM events as e JOIN venues as v ON e.venue_id=v.venue_id WHERE e.event_date>CURDATE() ORDER BY e.event_id;

-- select the top 5 high revenue generation events
SELECT e.event_name, SUM(p.amount_paid) as Total_revenue FROM events as e JOIN tickets as t ON t.event_id=e.event_id JOIN payments as p ON p.ticket_id=t.ticket_id WHERE p.payment_status='success' GROUP BY e.event_name ORDER BY SUM(p.amount_paid) DESC LIMIT 5;

-- select the attendee who booked ticket in last 7 days
SELECT t.ticket_id,t.attendee_id,t.booking_date,t.ticket_status FROM tickets as t WHERE booking_date = DATE_SUB(CURDATE(), INTERVAL 7 DAY) AND ticket_status = 'Confirmed';

-- 3rd Question
-- select the events scheduled in August and have 50% avaliable seats
SELECT e.event_id, e.event_name, e.event_date, e.avaliable_seats FROM events as e WHERE MONTHNAME(e.event_date)='August' AND e.avaliable_seats=e.total_seats/2;

-- select the attendee who have booked the ticket and having pending payment
SELECT a.attendee_id, a.name,t.ticket_id,t.booking_date, p.payment_status FROM attendees as a JOIN tickets as t ON a.attendee_id=t.attendee_id JOIN payments as p ON p.ticket_id=t.ticket_id AND p.payment_status='Pending';

-- identify events that are not fully booked 
SELECT e.event_id,e.event_name,e.total_seats,e.avaliable_seats FROM events as e WHERE e.avaliable_seats<>0;

--4th Question
--sort events by dates in ascending order
SELECT * FROM events ORDER BY event_date;

-- count the number of attendees per event
SELECT t.event_id, e.event_name, SUM(t.attendee_id) as total_attendee FROM tickets AS t JOIN events AS e ON e.event_id = t.event_id GROUP BY t.event_id, e.event_name;

-- show the total reevenue generated per event
SELECT e.event_name, SUM(p.amount_paid) as Total_revenue FROM events as e JOIN tickets as t ON t.event_id=e.event_id JOIN payments as p ON p.ticket_id=t.ticket_id WHERE p.payment_status='success' GROUP BY e.event_name;

--5th Question
-- Calculate the Total Revenue Generated from all events 
SELECT SUM(amount_paid) as Total_revenue FROM payments WHERE payment_status='Success';

--find the events with highest number of attendees
SELECT t.event_id, e.event_name, SUM(t.attendee_id) as total_attendee FROM tickets AS t JOIN events AS e ON e.event_id = t.event_id GROUP BY t.event_id, e.event_name ORDER BY SUM(t.attendee_id) DESC LIMIT 5;

-- select average amount among all events 
SELECT AVG(amount_paid) as average_amount FROM payments WHERE payment_status='Success';

--6th Question
-- ensure that atteendee cannot book the same event multiple times
ALTER TABLE tickets ADD CONSTRAINT unique_attendee_event UNIQUE (attendee_id, event_id);

-- Link payments to tickets, ensuring a valid foreign key relationship
SELECT * FROM tickets as t LEFT JOIN payments as p ON t.ticket_id=p.ticket_id;

--7th Question
-- select the event details along with venue information using INNER JOIN
SELECT e.event_name,e.event_date,v.venue_name,v.venue_location,e.organizer_id FROM events as e JOIN venues as v ON e.venue_id=v.venue_id;

-- get a list of attendee who have booked tickets but not complete the payment using LEFT JOIN
SELECT a.attendee_id, a.name,t.ticket_id,t.booking_date, p.payment_status FROM attendees AS a LEFT JOIN tickets AS t ON t.attendee_id = a.attendee_id LEFT JOIN payments AS p ON p.ticket_id = t.ticket_id WHERE p.payment_status = 'Pending' OR p.payment_status IS NULL;

-- select the all events with zero attendees using RIGHT JOIN
SELECT e.event_id, e.event_name FROM tickets as t RIGHT JOIN events as e ON t.event_id=e.event_id WHERE t.attendee_id IS NULL;

-- show attendee how have not book any ticket using FULL OUTER JOIN
SELECT a.attendee_id, a.name, t.ticket_status FROM  attendees AS a LEFT JOIN tickets AS t ON a.attendee_id = t.attendee_id WHERE t.ticket_status IS NULL
UNION
SELECT a.attendee_id, a.name, t.ticket_status FROM attendees AS a RIGHT JOIN tickets AS t ON a.attendee_id = t.attendee_id WHERE t.ticket_status IS NULL;

-- 8th Question
-- select events how have generated revenue more than average revenue
SELECT e.event_id, e.event_name, SUM(p.amount_paid) as Total_revenue FROM events as e JOIN tickets as t ON t.event_id=e.event_id JOIN payments as p ON p.ticket_id=t.ticket_id GROUP BY e.event_id, e.event_name HAVING SUM(p.amount_paid)>(SELECT AVG(amount_paid) FROM payments);

-- select attendee who have booked multiple event
SELECT a.attendee_id, a.name, COUNT(DISTINCT t.event_id) AS event_count FROM attendees AS a JOIN tickets AS t ON t.attendee_id = a.attendee_id GROUP BY a.attendee_id, a.name HAVING COUNT(DISTINCT t.event_id) > 1;

-- select organizers how are handeling more than 3 events
SELECT o.organizer_id, o.organizer_name, COUNT( e.organizer_id) AS event_count FROM organizers AS o JOIN events AS e ON e.organizer_id=o.organizer_id GROUP BY o.organizer_id, o.organizer_name HAVING COUNT( e.organizer_id) > 3;

-- 9th Question
-- extract month from event dae
SELECT MONTH(event_date) AS Month_Number , MONTHNAME(event_date) AS Month_Name FROM events;

-- calculate the number of days for upcoming events
SELECT event_name, DATEDIFF(event_date,CURDATE()) AS Days_Left FROM events;

-- formart payment date to 'YYYY-MM-DD HH:MM:SS'
SELECT DATE_FORMAT(payment_date, '%Y-%m-%d %H:%i:%s') AS Payment_Date FROM payments;

-- 10th Question
-- upper case all oragenizer name
SELECT UPPER(organizer_name) AS Organizer_Name FROM organizers;

-- Trim space from attendees name
SELECT TRIM(name) as Name FROM attendees;

-- replace Null email with not provided
UPDATE attendees
SET email = 'Not Provided'
WHERE email = "";

-- 11th Question
-- rank the events as per total revenue generated
SELECT e.event_name, SUM(p.amount_paid) as Total_revenue, RANK() OVER(ORDER BY SUM(p.amount_paid) DESC) as Ranks FROM events as e JOIN tickets as t ON t.event_id=e.event_id JOIN payments as p ON p.ticket_id=t.ticket_id WHERE p.payment_status='success' GROUP BY e.event_name;

-- cummalitive ticket sales
SELECT t.ticket_id,p.amount_paid, SUM(p.amount_paid) OVER(ORDER BY t.ticket_id) AS cummalitive_sale FROM tickets AS t JOIN payments AS p ON t.ticket_id=p.ticket_id WHERE p.payment_status='Success';

-- running total 
SELECT e.event_name,t.booking_date,COUNT(t.attendee_id) AS daily_attendees,SUM(COUNT(t.attendee_id)) OVER (PARTITION BY e.event_id ORDER BY t.booking_date ) AS running_attendees FROM tickets AS t JOIN events AS e ON e.event_id = t.event_id GROUP BY e.event_name, e.event_id, t.booking_date;

-- 12th Question
-- Catergorize event demand
SELECT e.event_id, e.event_name, CASE e.avaliable_seats
WHEN e.avaliable_seats < e.total_seats*0.2 THEN 'High Demand'
WHEN e.avaliable_seats BETWEEN e.total_seats*0.2 AND e.total_seats*0.5 THEN 'Moderate Demand'
ELSE 'Low Demand'
END AS Demand FROM events AS e;

-- Assign Payment Status
SELECT payments_id,Payment_Date,amount_paid, CASE payment_status
WHEN 'success' THEN 'Successfull'
WHEN 'Failed' THEN 'Failed'
ELSE 'Pending'
END AS payment_status FROM payments;
