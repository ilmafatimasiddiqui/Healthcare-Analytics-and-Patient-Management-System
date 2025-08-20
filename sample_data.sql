-- Patients
INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, PhoneNumber, Email, Address)
VALUES 
('John', 'Doe', '1985-05-12', 'Male', '9876543210', 'john.doe@example.com', '123 Main St, Delhi'),
('Jane', 'Smith', '1990-08-20', 'Female', '9123456780', 'jane.smith@example.com', '456 Park Ave, Delhi'),
('Rahul', 'Verma', '1978-03-15', 'Male', '9812345670', 'rahul.verma@example.com', '789 Oak Rd, Delhi'),
('Sneha', 'Sharma', '1995-11-05', 'Female', '9871112233', 'sneha.sharma@example.com', '321 Pine St, Delhi'),
('Amit', 'Kumar', '1982-06-25', 'Male', '9122334455', 'amit.kumar@example.com', '654 Maple Ave, Delhi');

-- Doctors
INSERT INTO Doctors (FirstName, LastName, Specialization, PhoneNumber, Email)
VALUES
('Alice', 'Brown', 'Cardiology', '9871112223', 'alice.brown@example.com'),
('Bob', 'Williams', 'Orthopedics', '9872223334', 'bob.williams@example.com'),
('Carol', 'Patel', 'Dermatology', '9873334445', 'carol.patel@example.com'),
('David', 'Singh', 'Neurology', '9874445556', 'david.singh@example.com'),
('Eva', 'Mehra', 'Pediatrics', '9875556667', 'eva.mehra@example.com');

-- Appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status)
VALUES
(1, 1, '2025-09-01', '10:00:00', 'Scheduled'),
(2, 2, '2025-09-02', '11:00:00', 'Completed'),
(3, 3, '2025-09-03', '12:00:00', 'Scheduled'),
(4, 4, '2025-09-04', '13:00:00', 'Completed'),
(5, 5, '2025-09-05', '14:00:00', 'Scheduled');

-- Treatments
INSERT INTO Treatments (AppointmentID, TreatmentDescription, TreatmentCost)
VALUES
(1, 'Heart Checkup', 5000.00),
(2, 'Knee Surgery', 15000.00),
(3, 'Skin Allergy Treatment', 3000.00),
(4, 'Migraine Treatment', 4000.00),
(5, 'Pediatric Vaccination', 2000.00);

-- Bills
INSERT INTO Bills (PatientID, TotalAmount, PaymentStatus, BillDate)
VALUES
(1, 5000.00, 'Paid', '2025-09-01'),
(2, 15000.00, 'Pending', '2025-09-02'),
(3, 3000.00, 'Paid', '2025-09-03'),
(4, 4000.00, 'Paid', '2025-09-04'),
(5, 2000.00, 'Pending', '2025-09-05');