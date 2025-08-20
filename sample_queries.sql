-- 1. List all patients
SELECT * FROM Patients;

-- 2. List doctors by specialization
SELECT FirstName, LastName, Specialization 
FROM Doctors 
WHERE Specialization='Cardiology';

-- 3. View upcoming appointments
SELECT a.AppointmentDate, a.AppointmentTime, p.FirstName AS PatientName, d.FirstName AS DoctorName
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE a.Status='Scheduled';

-- 4. Patient billing summary
SELECT p.FirstName, p.LastName, SUM(t.TreatmentCost) AS TotalAmount
FROM Treatments t
JOIN Appointments a ON t.AppointmentID = a.AppointmentID
JOIN Patients p ON a.PatientID = p.PatientID
GROUP BY p.PatientID;

-- 5. Doctor’s patient count
SELECT d.FirstName, d.LastName, COUNT(a.AppointmentID) AS PatientCount
FROM Doctors d
JOIN Appointments a ON d.DoctorID = a.DoctorID
GROUP BY d.DoctorID;