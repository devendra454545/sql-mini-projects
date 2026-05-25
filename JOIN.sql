CREATE DATABASE HEALTHCARE;

use healthcare;

CREATE TABLE Patients (
patient_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(10),
date_of_birth DATE,
contact_number VARCHAR(20),
email VARCHAR(100),
address VARCHAR(255),
blood_type VARCHAR(5)
);
INSERT INTO Patients (patient_id, first_name, last_name, gender, date_of_birth, contact_number, email, address, blood_type) VALUES
(101, 'John', 'Doe', 'Male', '1990-05-12', '+1-555-123-4567', 'john.doe@example.com', '123 Main St, New York', 'O+'),
(102, 'Emma', 'Watson', 'Female', '1989-04-15', '+1-555-234-5678', 'emma.watson@example.com', '45 Park Ave, Los Angeles', 'A+'),
(103, 'Michael', 'Smith', 'Male', '1992-07-20', '+1-555-345-6789', 'michael.smith@example.com', '78 Elm St, Chicago', 'B+'),
(104, 'Sophia', 'Johnson', 'Female', '1995-11-02', '+1-555-456-7890', 'sophia.johnson@example.com', '210 Oak St, Houston', 'AB+'),
(105, 'William', 'Brown', 'Male', '1987-02-25', '+1-555-567-8901', 'william.brown@example.com', '890 Pine Rd, Phoenix', 'O-'),
(106, 'Olivia', 'Davis', 'Female', '1998-03-17', '+1-555-678-9012', 'olivia.davis@example.com', '562 Maple St, Philadelphia', 'A-'),
(107, 'James', 'Miller', 'Male', '1991-08-09', '+1-555-789-0123', 'james.miller@example.com', '93 Walnut St, San Antonio', 'B-'),
(108, 'Isabella', 'Wilson', 'Female', '1993-12-01', '+1-555-890-1234', 'isabella.wilson@example.com', '401 Cedar St, San Diego', 'O+'),
(109, 'Ethan', 'Moore', 'Male', '1985-01-18', '+1-555-901-2345', 'ethan.moore@example.com', '22 Birch Ln, Dallas', 'AB-'),
(110, 'Ava', 'Taylor', 'Female', '1999-09-23', '+1-555-012-3456', 'ava.taylor@example.com', '67 Cherry St, San Jose', 'A+'),
(111, 'Liam', 'Anderson', 'Male', '1994-10-10', '+1-555-223-4567', 'liam.anderson@example.com', '84 Spruce St, Austin', 'B+'),
(112, 'Mia', 'Thomas', 'Female', '1996-06-21', '+1-555-334-5678', 'mia.thomas@example.com', '15 Ash St, Jacksonville', 'O+'),
(113, 'Noah', 'Jackson', 'Male', '1993-07-04', '+1-555-445-6789', 'noah.jackson@example.com', '99 Willow Ave, San Francisco', 'A-'),
(114, 'Charlotte', 'White', 'Female', '1988-09-13', '+1-555-556-7890', 'charlotte.white@example.com', '500 Poplar St, Indianapolis', 'AB+'),
(115, 'Benjamin', 'Harris', 'Male', '1990-11-30', '+1-555-667-8901', 'benjamin.harris@example.com', '321 Palm Blvd, Columbus', 'O+'),
(116, 'Amelia', 'Martin', 'Female', '1997-01-27', '+1-555-778-9012', 'amelia.martin@example.com', '45 Magnolia Dr, Fort Worth', 'B-'),
(117, 'Lucas', 'Thompson', 'Male', '1992-02-14', '+1-555-889-0123', 'lucas.thompson@example.com', '212 Sycamore Ln, Charlotte', 'A+'),
(118, 'Harper', 'Garcia', 'Female', '1998-08-19', '+1-555-990-1234', 'harper.garcia@example.com', '18 Aspen Rd, Detroit', 'O-'),
(119, 'Elijah', 'Martinez', 'Male', '1986-05-22', '+1-555-101-2345', 'elijah.martinez@example.com', '60 Hickory St, Seattle', 'B+'),
(120, 'Evelyn', 'Rodriguez', 'Female', '1995-04-08', '+1-555-202-3456', 'evelyn.rodriguez@example.com', '98 Beech St, Denver', 'AB-');

CREATE TABLE Payments (
payment_id INT,
patient_id INT,
payment_date DATE,
payment_method VARCHAR(20),
amount DECIMAL(10,2),
currency VARCHAR(10),
status VARCHAR(20),
remarks VARCHAR(100)
);
INSERT INTO Payments (payment_id, patient_id, payment_date, payment_method, amount, currency, status, remarks) VALUES
(501, 101, '2024-01-15', 'Credit Card', 120.50, 'USD', 'Completed', 'Consultation Fee'),
(502, 102, '2024-02-05', 'Cash', 80.00, 'USD', 'Completed', 'Follow-up visit'),
(503, 103, '2024-03-10', 'Debit Card', 150.75, 'USD', 'Completed', 'Lab Test Payment'),
(504, 104, '2024-03-25', 'UPI', 200.00, 'USD', 'Pending', 'Waiting for confirmation'),
(505, 105, '2024-04-01', 'Credit Card', 90.25, 'USD', 'Completed', 'General check-up'),
(506, 106, '2024-04-20', 'Insurance', 300.00, 'USD', 'Completed', 'Health insurance coverage'),
(507, 107, '2024-05-15', 'Cash', 75.00, 'USD', 'Refunded', 'Double payment issue'),
(508, 108, '2024-05-28', 'Credit Card', 220.60, 'USD', 'Completed', 'Surgery pre-payment'),
(509, 109, '2024-06-10', 'Debit Card', 145.00, 'USD', 'Completed', 'Medication purchase'),
(510, 111, '2024-06-18', 'Cash', 100.00, 'USD', 'Pending', 'Lab test charge'),
(511, 112, '2024-06-25', 'Credit Card', 185.40, 'USD', 'Completed', 'Vaccination fee'),
(512, 113, '2024-07-05', 'UPI', 250.00, 'USD', 'Completed', 'Doctor consultation'),
(513, 114, '2024-07-10', 'Debit Card', 190.00, 'USD', 'Completed', 'X-ray payment'),
(514, 115, '2024-07-22', 'Insurance', 500.00, 'USD', 'Pending', 'Insurance claim in progress'),
(515, 116, '2024-08-03', 'Cash', 60.00, 'USD', 'Completed', 'Health checkup'),
(516, 117, '2024-08-10', 'Credit Card', 140.00, 'USD', 'Completed', 'Consultation + Lab'),
(517, 118, '2024-08-15', 'Debit Card', 75.00, 'USD', 'Refunded', 'Duplicate charge'),
(518, 119, '2024-09-01', 'Insurance', 320.00, 'USD', 'Completed', 'Emergency visit'),
(519, 120, '2024-09-05', 'UPI', 180.00, 'USD', 'Pending', 'Bill under review'),
(520, 201, '2024-09-10', 'Cash', 90.00, 'USD', 'Completed', 'Unregistered patient'),
(521, 202, '2024-09-12', 'Credit Card', 130.00, 'USD', 'Completed', 'Old record'),
(522, 203, '2024-09-15', 'UPI', 60.00, 'USD', 'Pending', 'Duplicate entry');



CREATE TABLE Feedback (
feedback_id INT,
patient_id INT,
feedback_date DATE,
feedback_text VARCHAR(255),
rating INT,
reference_source VARCHAR(50),
staff_responsiveness VARCHAR(50),
visit_experience VARCHAR(50)
);

INSERT INTO Feedback (feedback_id, patient_id, feedback_date, feedback_text, rating, reference_source, staff_responsiveness, visit_experience) VALUES
(701, 101, '2024-01-16', 'Excellent doctor, quick service.', 5, 'Google', 'Very Good', 'Smooth'),
(702, 102, '2024-02-07', 'Friendly staff, but waiting time was long.', 4, 'Facebook', 'Good', 'Average'),
(703, 103, '2024-03-12', 'Clean environment and helpful nurses.', 5, 'Friend', 'Excellent', 'Great'),
(704, 104, '2024-03-26', 'Payment system issue, but resolved quickly.', 3, 'Google', 'Average', 'Okay'),
(705, 105, '2024-04-02', 'Satisfied with consultation.', 4, 'Instagram', 'Good', 'Smooth'),
(706, 106, '2024-04-21', 'Doctor was very patient and kind.', 5, 'Referral', 'Excellent', 'Great'),
(707, 107, '2024-05-17', 'Billing confusion but handled professionally.', 3, 'Google', 'Average', 'Okay'),
(708, 108, '2024-05-29', 'Excellent facilities.', 5, 'Friend', 'Excellent', 'Great'),
(709, 109, '2024-06-11', 'Service was okay, could be faster.', 3, 'Google', 'Average', 'Average'),
(710, 111, '2024-06-20', 'Good overall experience.', 4, 'Facebook', 'Good', 'Smooth'),
(711, 112, '2024-06-26', 'Clean and professional staff.', 5, 'Referral', 'Excellent', 'Great'),
(712, 113, '2024-07-06', 'Friendly environment, loved it.', 5, 'Instagram', 'Excellent', 'Smooth'),
(713, 114, '2024-07-12', 'Average experience, can improve.', 3, 'Google', 'Average', 'Okay'),
(714, 115, '2024-07-23', 'Staff were very cooperative.', 4, 'Friend', 'Good', 'Smooth'),
(715, 116, '2024-08-04', 'Good consultation, slightly late appointment.', 4, 'Facebook', 'Good', 'Average'),
(716, 117, '2024-08-12', 'Doctor explained everything clearly.', 5, 'Referral', 'Excellent', 'Great'),
(717, 118, '2024-08-16', 'Not satisfied with waiting time.', 2, 'Google', 'Poor', 'Average'),
(718, 119, '2024-09-02', 'Very fast and efficient service.', 5, 'Instagram', 'Excellent', 'Smooth'),
(719, 120, '2024-09-06', 'Good doctors but parking issue.', 3, 'Google', 'Good', 'Okay'),
(720, 202, '2024-09-13', 'No record found, old data.', 2, 'Unknown', 'Poor', 'Bad');


-- 1. Director wants to see each patient’s name along with their payment amount and payment method. (Tables: Patients + Payments)
-- 2. Director wants to find patients who have not made any payments yet. (Tables: Patients + Payments)
-- 3. Director wants to know the total amount paid by each patient so far. (Tables: Patients + Payments)
-- 4. Director wants to see the feedback given by each patient along with their name. (Tables: Patients + Feedback)
-- 5. Director wants to identify patients who have not given any feedback. (Tables: Patients + Feedback)
-- 6. Director wants a list of feedback ratings along with corresponding patient names. (Tables: Patients + Feedback)
-- 7. Director wants to find payment records that do not have a matching patient record. (Tables: Payments + Patients)
-- 8. Director wants to view patient names with their payment status for all completed and pending transactions. (Tables: Patients + Payments)
-- 9. Director wants to see all patient feedback along with their blood group details. (Tables: Patients + Feedback)
-- 10. Director wants to view each patient’s total number of feedback entries. (Tables: Patients + Feedback)
-- 11. Director wants to see the total revenue collected by each payment method. (Tables: Payments)
-- 12. Director wants to know the total amount paid by each patient. (Tables: Patients + Payments)
-- 13. Director wants a report showing the average feedback rating per payment method. (Tables: Payments + Feedback)
-- 14. Director wants to find how many patients gave feedback for each rating value (1–5). (Tables: Feedback + Patients)
-- 15. Director wants to know the total number of payments made by patients of each gender. (Tables: Patients + Payments)
-- 16. Director wants to see the average payment amount for each blood group. (Tables: Patients + Payments)
-- 17. Director wants to find the total number of patients grouped by payment status (Completed, Pending, Refunded). (Tables: Payments + Patients)
-- 18. Director wants to calculate the average feedback rating for each gender. (Tables: Patients + Feedback)
-- 19. Director wants a report of total feedback entries and average rating for each reference source. (Tables: Feedback)
-- 20. Director wants to see the total amount paid by each patient who gave feedback with rating ≥ 4. (Tables: Patients + Payments + Feedback, filter on rating, group by patient)
-- 21. Director wants a report showing average payment amount per gender for patients who have completed payments only. (Tables: Patients + Payments, filter on status, group by gender)
-- 22. Director wants to find patients who made more than 1 payment and gave feedback with rating ≥ 3, showing total amount paid. (Tables: Patients + Payments + Feedback, HAVING total payments > 1)
-- 23. Director wants to calculate average feedback rating per blood group for patients who made payments above $100. (Tables: Patients + Payments + Feedback, filter on amount, group by blood type)
-- 24. Director wants a summary of total payments and average feedback rating per payment method, including only methods with total revenue > $500. (Tables: Payments + Feedback, HAVING total revenue > 500)
-- 25. Director wants to see patients who gave feedback rated 5 and paid through 'Credit Card', along with total payment amount. (Tables: Patients + Payments + Feedback, filter on rating and payment_method)
-- 26. Director wants a report of number of feedbacks and total payments per reference source, including only sources with more than 2 feedbacks. (Tables: Payments + Feedback + Patients, HAVING COUNT(feedback_id) > 2)
-- 27. Director wants to calculate average payment amount per gender for patients who gave at least 1 feedback, including only genders with average payment > $150. (Tables: Patients + Payments + Feedback, HAVING AVG(amount) > 150)
-- 28. Director wants a list of patients with total payment amount and average feedback rating, only for patients who spent more than $200 and gave feedback ≥ 3. (Tables: Patients + Payments + Feedback, HAVING SUM(amount) > 200)
-- 29. Director wants monthly revenue and average feedback rating, only for months with total revenue exceeding $1000. (Tables: Payments + Feedback, HAVING SUM(amount) > 1000, GROUP BY month)
-- 30. Find total revenue and total transactions per patient.
-- 31. Calculate average payment per patient and each patient’s percentage of total revenue.
-- 32. Find total feedback count and average rating per patient.
-- 33. Find total, average, and maximum payment per patient.
-- 34. Find total revenue per payment method and each method’s percentage contribution.
-- 35. Find average feedback rating per payment method.
-- 36. List patients who paid more than the average payment.
-- 37. Calculate feedback count and percentage of total feedback per reference source.
-- 38. Calculate total payment, average rating, and rating per $100 spent per patient.
-- 39. Find monthly revenue and average feedback rating.
-- 40. Calculate total payments and average payment per blood group.
-- 41. Find patients with multiple payments and show max, min, and average payment.
-- 42. Calculate total revenue and average feedback per gender.
-- 43. Find patients who paid more than $150 and gave feedback ≥4.
-- 44. Find total revenue and patient count per payment method.
-- 45. Calculate average payment per patient and their feedback count.
-- 46. Calculate monthly revenue and each month’s percentage contribution to yearly revenue.
-- 47. Find average feedback rating and average payment per reference source.
-- 48. Find patients’ maximum and minimum payment amounts.
-- 49. Calculate average rating per $100 spent per patient.
-- 50. Patients with total payment > $200