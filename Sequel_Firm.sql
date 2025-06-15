-- Creating the Company Database--
CREATE DATABASE sequel_firm;

-- Creating the Initial Applicants Table--
CREATE TABLE applicants(
	applicant_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    dob DATE NOT NULL CHECK (dob <= '2006-06-12'),
	email VARCHAR(50) NOT NULL CHECK (email LIKE '%@%.%'),
    phone_number VARCHAR(14) NOT NULL CHECK (LENGTH(phone_number) = 11),
    address_line_one VARCHAR(50),
    address_line_two VARCHAR(50),
    state VARCHAR(20),
    role_applied VARCHAR(20) NOT NULL CHECK (role_applied IN ('Data Analyst', 'Data Scientist')),
    school_attended VARCHAR(50),
    cgpa DECIMAL(3,2) NOT NULL CHECK (cgpa BETWEEN 0.00 AND 5.00),
    years_of_experience INT NOT NULL
);

SELECT * FROM applicants;

DELETE FROM applicants;

-- Inserting the data into the database --
INSERT INTO applicants (first_name, last_name, dob, email, phone_number, address_line_one, address_line_two, state, role_applied, school_attended, cgpa, years_of_experience) VALUES
('Adaora', 'Okafor', '1995-03-15', 'adaora.okafor@gmail.com', '07065379374', 'No 17 Odudu Street', 'Oniru Victoria Island', 'Lagos', 'Data Analyst', 'University of Lagos', 3.75, 3),
('Danielle', 'Johnson', '1993-10-21', 'daniellejohnson@gmail.com', '08030227680', '21819 Johnson Course', 'Lekki Phase 1', 'Lagos', 'Data Scientist', 'University of Calabar', 2.28, 3);


INSERT INTO applicants (first_name, last_name, dob, email, phone_number, address_line_one, address_line_two, state, role_applied, school_attended, cgpa, years_of_experience) VALUES
('Chinedu', 'Okoye', '1994-07-12', 'chinedu.okoye@gmail.com', '08123456789', 'No 45 Awolowo Road', 'Ikoyi', 'Lagos', 'Data Analyst', 'University of Nigeria Nsukka', 3.45, 4),
('Fatima', 'Aliyu', '1996-01-28', 'fatima.aliyu@yahoo.com', '07038274651', 'Plot 234 Cadastral Zone', 'Wuse II', 'FCT', 'Data Scientist', 'Ahmadu Bello University', 3.12, 2),
('Emeka', 'Nwachukwu', '1992-11-05', 'emeka.nwachukwu@hotmail.com', '08165432109', '12 Ikeja GRA', 'Allen Avenue', 'Lagos', 'Data Analyst', 'University of Port Harcourt', 3.67, 5),
('Aisha', 'Bello', '1997-04-18', 'aisha.bello@gmail.com', '09087654321', 'No 78 Independence Layout', 'Enugu', 'Enugu', 'Data Scientist', 'University of Ibadan', 3.89, 1),
('Tunde', 'Adebayo', '1995-08-22', 'tunde.adebayo@gmail.com', '08034567890', '156 Bodija Estate', 'Ibadan', 'Oyo', 'Data Analyst', 'Obafemi Awolowo University', 3.23, 3),
('Kemi', 'Ogundipe', '1993-12-03', 'kemi.ogundipe@yahoo.com', '07065432187', 'Flat 6 Block B', 'Festac Town', 'Lagos', 'Data Scientist', 'Lagos State University', 3.56, 4),
('Ibrahim', 'Musa', '1994-06-14', 'ibrahim.musa@gmail.com', '08098765432', 'No 45 Ahmadu Bello Way', 'Kaduna', 'Kaduna', 'Data Analyst', 'Kaduna State University', 2.98, 2),
('Chioma', 'Eze', '1996-09-30', 'chioma.eze@gmail.com', '09012345678', '23 New Haven', 'Enugu', 'Enugu', 'Data Scientist', 'University of Nigeria Nsukka', 3.78, 3),
('Yusuf', 'Abdullahi', '1992-02-17', 'yusuf.abdullahi@hotmail.com', '08056789012', 'Block 15 Kubwa', 'Abuja', 'FCT', 'Data Analyst', 'University of Abuja', 3.34, 6),
('Blessing', 'Okoro', '1995-05-25', 'blessing.okoro@gmail.com', '07043216789', 'No 89 Aba Road', 'Port Harcourt', 'Rivers', 'Data Scientist', 'Rivers State University', 3.12, 2),
('Segun', 'Lawal', '1993-03-08', 'segun.lawal@yahoo.com', '08187654321', '67 Ikorodu Road', 'Maryland', 'Lagos', 'Data Analyst', 'University of Lagos', 3.45, 5),
('Hauwa', 'Ibrahim', '1997-07-19', 'hauwa.ibrahim@gmail.com', '09076543210', 'No 234 Maitama', 'Abuja', 'FCT', 'Data Scientist', 'Bayero University Kano', 3.67, 1),
('Biodun', 'Akinola', '1994-10-11', 'biodun.akinola@gmail.com', '08023456789', 'Plot 12 GRA', 'Ikeja', 'Lagos', 'Data Analyst', 'Federal University of Technology Akure', 3.89, 4),
('Zainab', 'Usman', '1996-12-06', 'zainab.usman@hotmail.com', '07098765432', 'No 156 Wuse Zone 4', 'Abuja', 'FCT', 'Data Scientist', 'University of Maiduguri', 3.01, 2),
('Olusegun', 'Adeyemi', '1995-01-13', 'olusegun.adeyemi@gmail.com', '08154321098', '78 Bodija Market', 'Ibadan', 'Oyo', 'Data Analyst', 'University of Ilorin', 3.56, 3),
('Amina', 'Garba', '1993-05-24', 'amina.garba@gmail.com', '08076543219', 'No 23 Gombe Road', 'Kaduna', 'Kaduna', 'Data Scientist', 'Ahmadu Bello University', 3.78, 4),
('Olumide', 'Oyebanji', '1994-08-17', 'olumide.oyebanji@yahoo.com', '07023456781', '45 Adeniyi Jones', 'Ikeja', 'Lagos', 'Data Analyst', 'University of Lagos', 2.89, 3),
('Khadija', 'Mohammed', '1996-03-09', 'khadija.mohammed@gmail.com', '08165432178', 'Plot 67 Garki', 'Abuja', 'FCT', 'Data Scientist', 'University of Jos', 3.34, 2),
('Chukwuma', 'Okwu', '1992-12-20', 'chukwuma.okwu@gmail.com', '09087654312', 'No 12 Ogui Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.67, 5),
('Mariam', 'Adamu', '1995-06-15', 'mariam.adamu@hotmail.com', '08034567812', 'No 89 Kachia Road', 'Kaduna', 'Kaduna', 'Data Scientist', 'Kaduna State University', 3.12, 1),
('Adebola', 'Oni', '1993-09-08', 'adebola.oni@gmail.com', '07065432198', '234 Opebi Road', 'Ikeja', 'Lagos', 'Data Analyst', 'Lagos State University', 3.45, 4),
('Safiya', 'Yakubu', '1994-11-12', 'safiya.yakubu@yahoo.com', '08098765431', 'No 156 Nasarawa', 'Kano', 'Kano', 'Data Scientist', 'Bayero University Kano', 3.78, 3),
('Nnamdi', 'Azubuike', '1996-02-28', 'nnamdi.azubuike@gmail.com', '09012345679', 'No 45 Umudioka', 'Awka', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 2.95, 2),
('Rukayat', 'Lawal', '1995-07-03', 'rukayat.lawal@gmail.com', '08056789013', '67 Ilorin Road', 'Kwara', 'Kwara', 'Data Scientist', 'University of Ilorin', 3.56, 3),
('Ikechukwu', 'Okafor', '1993-04-21', 'ikechukwu.okafor@hotmail.com', '07043216798', 'No 23 Owerri Road', 'Aba', 'Abia', 'Data Analyst', 'Abia State University', 3.23, 5),
('Hafsat', 'Suleiman', '1997-01-16', 'hafsat.suleiman@gmail.com', '08187654329', 'Plot 89 Wuse', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.67, 1),
('Tolani', 'Babatunde', '1994-10-05', 'tolani.babatunde@gmail.com', '09076543218', '12 Dugbe Market', 'Ibadan', 'Oyo', 'Data Analyst', 'University of Ibadan', 3.34, 4),
('Maryam', 'Baba', '1992-08-11', 'maryam.baba@yahoo.com', '08023456798', 'No 34 Maiduguri Road', 'Bauchi', 'Bauchi', 'Data Scientist', 'Abubakar Tafawa Balewa University', 3.12, 6),
('Chukwuemeka', 'Obi', '1995-12-18', 'chukwuemeka.obi@gmail.com', '07098765439', 'No 156 Zik Avenue', 'Awka', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 3.78, 2),
('Zulaihat', 'Danjuma', '1996-05-07', 'zulaihat.danjuma@gmail.com', '08154321097', 'Plot 23 Rayfield', 'Jos', 'Plateau', 'Data Scientist', 'University of Jos', 3.45, 3),
('Adewale', 'Adeniyi', '1993-11-29', 'adewale.adeniyi@hotmail.com', '08076543217', '89 Abeokuta Road', 'Ibadan', 'Oyo', 'Data Analyst', 'Obafemi Awolowo University', 2.87, 4),
('Asmau', 'Tijani', '1994-06-22', 'asmau.tijani@gmail.com', '07023456789', 'No 67 Sokoto Road', 'Kebbi', 'Kebbi', 'Data Scientist', 'Usmanu Danfodiyo University', 3.56, 2),
('Chinonso', 'Nwosu', '1996-09-14', 'chinonso.nwosu@gmail.com', '08165432187', 'No 234 Owerri Road', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology Owerri', 3.23, 1),
('Hajara', 'Aliyu', '1995-03-26', 'hajara.aliyu@yahoo.com', '09087654329', 'Plot 45 Tudun Wada', 'Kaduna', 'Kaduna', 'Data Scientist', 'Ahmadu Bello University', 3.67, 3),
('Obinna', 'Okonkwo', '1992-07-13', 'obinna.okonkwo@gmail.com', '08034567819', 'No 12 Nkpor Road', 'Onitsha', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 3.34, 5),
('Rahmat', 'Yusuf', '1997-02-08', 'rahmat.yusuf@gmail.com', '07065432196', 'No 89 Bida Road', 'Minna', 'Niger', 'Data Scientist', 'Federal University of Technology Minna', 3.12, 1),
('Emeka', 'Ugwu', '1994-12-01', 'emeka.ugwu@hotmail.com', '08098765438', '156 Ogbete Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.78, 4),
('Bilkisu', 'Abdullahi', '1995-08-19', 'bilkisu.abdullahi@gmail.com', '09012345687', 'Plot 23 Kaura', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.45, 2),
('Ifeanyi', 'Nwankwo', '1993-05-31', 'ifeanyi.nwankwo@gmail.com', '08056789021', 'No 67 Onitsha Road', 'Awka', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 2.95, 3),
('Safiyyah', 'Hassan', '1996-10-16', 'safiyyah.hassan@yahoo.com', '07043216796', 'No 234 Katsina Road', 'Kano', 'Kano', 'Data Scientist', 'Bayero University Kano', 3.67, 2),
('Kelechi', 'Okwu', '1994-04-09', 'kelechi.okwu@gmail.com', '08187654327', '45 Aba Road', 'Port Harcourt', 'Rivers', 'Data Analyst', 'University of Port Harcourt', 3.23, 4),
('Balkis', 'Umar', '1992-11-27', 'balkis.umar@gmail.com', '09076543216', 'Plot 89 Wuye', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.56, 6),
('Chidi', 'Anyanwu', '1995-06-04', 'chidi.anyanwu@hotmail.com', '08023456796', 'No 12 Owerri Road', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology Owerri', 3.34, 1),
('Nafisat', 'Adamu', '1997-01-22', 'nafisat.adamu@gmail.com', '07098765437', 'No 156 Gombe Road', 'Bauchi', 'Bauchi', 'Data Scientist', 'Abubakar Tafawa Balewa University', 3.12, 3),
('Obianuju', 'Okoro', '1993-09-15', 'obianuju.okoro@gmail.com', '08154321095', '234 Ikwerre Road', 'Port Harcourt', 'Rivers', 'Data Analyst', 'Rivers State University', 3.78, 5),
('Halima', 'Bello', '1996-03-12', 'halima.bello@yahoo.com', '08076543215', 'Plot 67 Jabi', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.45, 2),
('Chukwudi', 'Okafor', '1994-07-28', 'chukwudi.okafor@gmail.com', '07023456787', 'No 23 Onitsha Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 2.89, 4),
('Asma', 'Garba', '1995-12-05', 'asma.garba@gmail.com', '08165432185', 'No 89 Kaduna Road', 'Zaria', 'Kaduna', 'Data Scientist', 'Ahmadu Bello University', 3.67, 1),
('Okey', 'Nwachukwu', '1992-08-21', 'okey.nwachukwu@hotmail.com', '09087654327', '156 Wetheral Road', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology Owerri', 3.23, 6),
('Amina', 'Sani', '1997-04-17', 'amina.sani@gmail.com', '08034567817', 'Plot 23 Kuje', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.56, 2),
('Uzoma', 'Eze', '1994-11-06', 'uzoma.eze@gmail.com', '07065432194', 'No 67 Agbani Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.34, 3),
('Kauthar', 'Ibrahim', '1995-05-23', 'kauthar.ibrahim@yahoo.com', '08098765436', 'No 234 Ahmadu Bello Way', 'Kaduna', 'Kaduna', 'Data Scientist', 'Kaduna State University', 3.12, 4),
('Chinedu', 'Okoro', '1993-02-14', 'chinedu.okoro@gmail.com', '09012345685', '45 Aba Road', 'Umuahia', 'Abia', 'Data Analyst', 'Abia State University', 3.78, 5),
('Maimuna', 'Yakubu', '1996-08-30', 'maimuna.yakubu@gmail.com', '08056789019', 'Plot 89 Lugbe', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.45, 1),
('Emeka', 'Okonkwo', '1994-06-11', 'emeka.okonkwo@hotmail.com', '07043216794', 'No 12 Awka Road', 'Onitsha', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 2.95, 3),
('Zainab', 'Mohammed', '1992-12-28', 'zainab.mohammed@gmail.com', '08187654325', 'No 156 Jos Road', 'Bauchi', 'Bauchi', 'Data Scientist', 'Abubakar Tafawa Balewa University', 3.67, 6),
('Nkechi', 'Okafor', '1995-09-07', 'nkechi.okafor@gmail.com', '09076543214', '234 Owerri Road', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology Owerri', 3.23, 2),
('Hauwa', 'Suleiman', '1997-03-25', 'hauwa.suleiman@yahoo.com', '08023456794', 'Plot 67 Garki', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.56, 4),
('Ikenna', 'Obi', '1993-07-02', 'ikenna.obi@gmail.com', '07098765435', 'No 23 Zik Avenue', 'Awka', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 3.34, 1),
('Sadiya', 'Usman', '1996-11-18', 'sadiya.usman@gmail.com', '08154321093', 'No 89 Maitama', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.12, 3),
('Chukwuma', 'Eze', '1994-04-26', 'chukwuma.eze@hotmail.com', '08076543213', '156 Enugu Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.78, 5),
('Amina', 'Bello', '1995-01-13', 'amina.bello@gmail.com', '07023456785', 'Plot 23 Wuse', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.45, 2),
('Onyeka', 'Nwankwo', '1992-08-09', 'onyeka.nwankwo@gmail.com', '08165432183', 'No 67 Onitsha Road', 'Awka', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 2.87, 6),
('Khadija', 'Aliyu', '1997-05-16', 'khadija.aliyu@yahoo.com', '09087654325', 'No 234 Kaduna Road', 'Zaria', 'Kaduna', 'Data Scientist', 'Ahmadu Bello University', 3.67, 1),
('Chidi', 'Okoro', '1994-10-03', 'chidi.okoro@gmail.com', '08034567815', '45 Port Harcourt Road', 'Aba', 'Abia', 'Data Analyst', 'Abia State University', 3.23, 4),
('Fatima', 'Hassan', '1995-12-20', 'fatima.hassan@gmail.com', '07065432192', 'Plot 89 Asokoro', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.56, 3),
('Kelechi', 'Okafor', '1993-06-27', 'kelechi.okafor@hotmail.com', '08098765434', 'No 12 Owerri Road', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology Owerri', 3.34, 2),
('Hadiza', 'Musa', '1996-02-04', 'hadiza.musa@gmail.com', '09012345683', 'No 156 Jos Road', 'Kaduna', 'Kaduna', 'Data Scientist', 'Kaduna State University', 3.12, 5),
('Obinna', 'Eze', '1994-09-21', 'obinna.eze@gmail.com', '08056789017', '234 Agbani Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.78, 1),
('Aisha', 'Umar', '1992-11-08', 'aisha.umar@yahoo.com', '07043216792', 'Plot 67 Gwarinpa', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.45, 6),
('Emeka', 'Obi', '1995-07-15', 'emeka.obi@gmail.com', '08187654323', 'No 23 Awka Road', 'Onitsha', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 2.95, 3),
('Zulaihat', 'Bello', '1997-04-12', 'zulaihat.bello@gmail.com', '09076543212', 'No 89 Maitama', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.67, 2),
('Chukwuemeka', 'Okoro', '1993-08-29', 'chukwuemeka.okoro@hotmail.com', '08023456792', '156 Aba Road', 'Port Harcourt', 'Rivers', 'Data Analyst', 'University of Port Harcourt', 3.23, 4),
('Maryam', 'Abdullahi', '1996-05-06', 'maryam.abdullahi@gmail.com', '07098765433', 'Plot 23 Kubwa', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.56, 1),
('Ifeanyi', 'Okafor', '1994-12-23', 'ifeanyi.okafor@gmail.com', '08154321091', 'No 67 Enugu Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.34, 5),
('Halima', 'Garba', '1995-03-10', 'halima.garba@yahoo.com', '08076543211', 'No 234 Ahmadu Bello Way', 'Kaduna', 'Kaduna', 'Data Scientist', 'Ahmadu Bello University', 3.12, 3),
('Nnamdi', 'Eze', '1992-07-27', 'nnamdi.eze@gmail.com', '07023456783', '45 Agbani Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.78, 6),
('Sadiya', 'Ibrahim', '1997-01-04', 'sadiya.ibrahim@gmail.com', '08165432181', 'Plot 89 Wuye', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.45, 2),
('Chidi', 'Nwankwo', '1994-06-21', 'chidi.nwankwo@hotmail.com', '09087654323', 'No 12 Awka Road', 'Onitsha', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 2.89, 1),
('Kauthar', 'Usman', '1995-11-08', 'kauthar.usman@gmail.com', '08034567813', 'No 156 Garki', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.67, 4),
('Uchenna', 'Okoro', '1993-04-15', 'uchenna.okoro@gmail.com', '07065432190', '234 Port Harcourt Road', 'Aba', 'Abia', 'Data Analyst', 'Abia State University', 3.23, 3),
('Fatima', 'Aliyu', '1996-08-02', 'fatima.aliyu2@yahoo.com', '08098765432', 'Plot 67 Asokoro', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.56, 5),
('Obinna', 'Okafor', '1994-02-19', 'obinna.okafor@gmail.com', '09012345681', 'No 23 Owerri Road', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology Owerri', 3.34, 2),
('Amina', 'Mohammed', '1992-10-06', 'amina.mohammed@gmail.com', '08056789015', 'No 89 Maiduguri Road', 'Bauchi', 'Bauchi', 'Data Scientist', 'Abubakar Tafawa Balewa University', 3.12, 6),
('Kelechi', 'Eze', '1995-05-23', 'kelechi.eze@hotmail.com', '07043216790', '156 Enugu Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.78, 1),
('Hauwa', 'Bello', '1997-09-10', 'hauwa.bello@gmail.com', '08187654321', 'Plot 23 Jabi', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.45, 3),
('Emeka', 'Nwankwo', '1993-12-27', 'emeka.nwankwo@gmail.com', '09076543210', 'No 67 Onitsha Road', 'Awka', 'Anambra', 'Data Analyst', 'Nnamdi Azikiwe University', 2.95, 4),
('Zainab', 'Hassan', '1996-06-14', 'zainab.hassan@yahoo.com', '08023456790', 'No 234 Kano Road', 'Kaduna', 'Kaduna', 'Data Scientist', 'Kaduna State University', 3.67, 2),
('Chukwuma', 'Okoro', '1994-03-01', 'chukwuma.okoro@gmail.com', '07098765431', '45 Aba Road', 'Port Harcourt', 'Rivers', 'Data Analyst', 'Rivers State University', 3.23, 5),
('Bilkisu', 'Umar', '1995-07-18', 'bilkisu.umar@gmail.com', '08154321089', 'Plot 89 Lugbe', 'Abuja', 'FCT', 'Data Scientist', 'University of Abuja', 3.56, 1),
('Ifeanyi', 'Eze', '1992-11-05', 'ifeanyi.eze@hotmail.com', '08076543209', 'No 12 Agbani Road', 'Enugu', 'Enugu', 'Data Analyst', 'University of Nigeria Nsukka', 3.34, 6);


INSERT INTO applicants (first_name, last_name, dob, email, phone_number, address_line_one, address_line_two, state, role_applied, school_attended, cgpa, years_of_experience) VALUES
('Chinedu', 'Eze', '1995-01-12', 'chinedu.eze@gmail.com', '07012345678', '1A Ogundipe Street', 'Ikeja', 'Lagos', 'Data Analyst', 'University of Nigeria', 3.5, 2),
('Fatima', 'Aliyu', '1994-02-25', 'fatima.aliyu@gmail.com', '08023456789', '5B Nuhu Street', 'Kaduna', 'Kaduna', 'Data Scientist', 'Ahmadu Bello University', 3.6, 3),
('Emeka', 'Okoro', '1990-11-30', 'emeka.okoro@gmail.com', '07098765432', '12 Alaba Road', 'Surulere', 'Lagos', 'Data Analyst', 'Obafemi Awolowo University', 3.8, 4),
('Aisha', 'Bello', '1992-04-20', 'aisha.bello@gmail.com', '08123456780', '23 Jabi Road', 'Abuja', 'Abuja', 'Data Scientist', 'University of Abuja', 3.2, 2),
('Tunde', 'Ogunleye', '1988-05-15', 'tunde.ogunleye@gmail.com', '07034567890', '45 Ojo Street', 'Ibadan', 'Oyo', 'Data Analyst', 'University of Ibadan', 3.9, 5),
('Olivia', 'Nwankwo', '1996-06-10', 'olivia.nwankwo@gmail.com', '08045678901', '7 Eze Street', 'Enugu', 'Enugu', 'Data Scientist', 'University of Enugu', 3.7, 1),
('Chukwuemeka', 'Ike', '1993-07-22', 'chukwuemeka.ike@gmail.com', '07056789012', '9 Uyo Street', 'Uyo', 'Akwa Ibom', 'Data Analyst', 'University of Uyo', 3.4, 3),
('Zainab', 'Abdullahi', '1995-08-18', 'zainab.abdullahi@gmail.com', '08134567891', '34 Bwari Road', 'Abuja', 'Abuja', 'Data Scientist', 'Bayero University', 3.1, 2),
('Ifeoma', 'Obi', '1991-09-14', 'ifeoma.obi@gmail.com', '07067890123', '18 Nsukka Street', 'Nsukka', 'Enugu', 'Data Analyst', 'University of Nigeria', 3.3, 4),
('Samuel', 'Adeola', '1989-10-09', 'samuel.adeola@gmail.com', '08078901234', '3 Adebayo Street', 'Lagos', 'Lagos', 'Data Scientist', 'Lagos State University', 3.0, 5);


INSERT INTO applicants (first_name, last_name, dob, email, phone_number, address_line_one, address_line_two, state, role_applied, school_attended, cgpa, years_of_experience) VALUES
('Chika', 'Nwosu', '1994-01-15', 'chika.nwosu@gmail.com', '07011122334', '10 Ajao Road', 'Ikeja', 'Lagos', 'Data Analyst', 'University of Lagos', 3.4, 2),
('Amara', 'Chukwu', '1993-02-28', 'amara.chukwu@gmail.com', '08156789012', '25 Umuahia Lane', 'Abuja', 'Abuja', 'Data Scientist', 'University of Nigeria', 3.6, 3),
('Kelechi', 'Okafor', '1995-03-10', 'kelechi.okafor@gmail.com', '07022334455', '4 Awolowo Way', 'Enugu', 'Enugu', 'Data Analyst', 'Nnamdi Azikiwe University', 3.7, 1),
('Tolu', 'Afolabi', '1992-04-05', 'tolu.afolabi@gmail.com', '08033445566', '8 Akinyemi Street', 'Ibadan', 'Oyo', 'Data Scientist', 'University of Ibadan', 3.8, 4),
('Nneka', 'Obinna', '1991-05-22', 'nneka.obinna@gmail.com', '07044556677', '9 Owerri Road', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology', 3.5, 3),
('Oluwaseun', 'Adediran', '1990-06-10', 'olu.adediran@gmail.com', '08155667788', '12 Victoria Street', 'Lagos', 'Lagos', 'Data Scientist', 'Lagos State University', 3.9, 5),
('Ify', 'Nwafor', '1993-07-18', 'ify.nwafor@gmail.com', '07066778899', '15 Oyo Lane', 'Abeokuta', 'Ogun', 'Data Analyst', 'Obafemi Awolowo University', 3.3, 2),
('Tunde', 'Ogunbiyi', '1994-08-17', 'tunde.ogunbiyi@gmail.com', '08077889900', '20 Lagos Road', 'Lagos', 'Lagos', 'Data Scientist', 'University of Lagos', 3.6, 3),
('Zainab', 'Mohammed', '1995-09-12', 'zainab.mohammed@gmail.com', '07088990011', '3 Abuja Street', 'Abuja', 'Abuja', 'Data Analyst', 'Bayero University', 3.4, 2),
('Chinonso', 'Uche', '1991-10-25', 'chinonso.uche@gmail.com', '08199001122', '17 Nsukka Road', 'Nsukka', 'Enugu', 'Data Scientist', 'University of Nigeria', 3.8, 4),
('Temitope', 'Adeyemi', '1992-11-05', 'temitope.adeyemi@gmail.com', '07011223344', '5 Adebayo Street', 'Ibadan', 'Oyo', 'Data Analyst', 'University of Ibadan', 3.2, 3),
('Adaobi', 'Ifeanyi', '1994-12-18', 'adaobi.ifeanyi@gmail.com', '08022334455', '30 Lekki Road', 'Lagos', 'Lagos', 'Data Scientist', 'University of Lagos', 3.7, 2),
('Joshua', 'Obi', '1993-01-20', 'joshua.obi@gmail.com', '07033445566', '8 Owerri Avenue', 'Owerri', 'Imo', 'Data Analyst', 'Federal University of Technology', 3.1, 1),
('Ogechi', 'Nwokolo', '1995-02-14', 'oge.nwokolo@gmail.com', '08144556677', '28 Jibowu Street', 'Lagos', 'Lagos', 'Data Scientist', 'Bayero University', 3.9, 3),
('Ifeoma', 'Okeke', '1991-03-11', 'ifeoma.okeke@gmail.com', '07055667788', '14 Ajao Street', 'Ikeja', 'Lagos', 'Data Analyst', 'University of Nigeria', 3.6, 2),
('Chidinma', 'Nwafor', '1994-04-03', 'chidimma.nwafor@gmail.com', '08066778899', '13 Bwari Road', 'Abuja', 'Abuja', 'Data Scientist', 'Ahmadu Bello University', 3.5, 4),
('Obinna', 'Eze', '1990-05-15', 'obinna.eze@gmail.com', '07077889900', '19 Ikenne Avenue', 'Ikenne', 'Ogun', 'Data Analyst', 'University of Ibadan', 3.8, 3),
('Nkem', 'Okwu', '1993-06-22', 'nkem.okwu@gmail.com', '08188990011', '6 Aso Rock Road', 'Abuja', 'Abuja', 'Data Scientist', 'University of Abuja', 3.4, 2),
('Ayo', 'Adesina', '1992-07-19', 'ayo.adesina@gmail.com', '07099001122', '10 Lekki Crescent', 'Lagos', 'Lagos', 'Data Analyst', 'Lagos State University', 3.7, 3),
('Chijioke', 'Okoro', '1995-08-30', 'chijioke.okoro@gmail.com', '08012345678', '15 Nsukka Street', 'Nsukka', 'Enugu', 'Data Scientist', 'Nnamdi Azikiwe University', 3.6, 2),
('Funmi', 'Ogunleye', '1991-09-05', 'funmi.ogunleye@gmail.com', '07023456789', '7 Alaba Road', 'Surulere', 'Lagos', 'Data Analyst', 'University of Lagos', 3.5, 2),
('Damilola', 'Akinyemi', '1994-10-17', 'damilola.akinyemi@gmail.com', '08134567890', '3 Oyo Street', 'Ibadan', 'Oyo', 'Data Scientist', 'Obafemi Awolowo University', 3.2, 1),
('Olamide', 'Adedayo', '1993-11-25', 'olamide.adedayo@gmail.com', '07045678901', '8 Lagos Road', 'Lagos', 'Lagos', 'Data Analyst', 'University of Ibadan', 3.4, 3),
('Nifemi', 'Ojo', '1995-12-02', 'nifemi.ojo@gmail.com', '08056789012', '20 Abuja Road', 'Abuja', 'Abuja', 'Data Scientist', 'University of Nigeria', 3.8, 4),
('Uche', 'Kalu', '1992-01-27', 'uche.kalu@gmail.com', '07067890123', '12 Enugu Street', 'Enugu', 'Enugu', 'Data Analyst', 'Bayero University', 3.3, 2),
('Patience', 'Okwudili', '1990-02-20', 'patience.okwudili@gmail.com', '08178901234', '25 Owerri Road', 'Owerri', 'Imo', 'Data Scientist', 'Federal University of Technology', 3.5, 3),
('Chisom', 'Ezeani', '1994-03-14', 'chisom.ezeani@gmail.com', '07089012345', '18 Lagos Street', 'Lagos', 'Lagos', 'Data Analyst', 'University of Lagos', 3.6, 2),
('Ijeoma', 'Nwachukwu', '1991-04-30', 'ijeoma.nwachukwu@gmail.com', '08090123456', '14 Aso Rock Avenue', 'Abuja', 'Abuja', 'Data Scientist', 'University of Ibadan', 3.8, 4),
('Oby', 'Okafor', '1993-05-27', 'oby.okafor@gmail.com', '07001234567', '22 Jabi Street', 'Abuja', 'Abuja', 'Data Analyst', 'Nnamdi Azikiwe University', 3.4, 2),
('Victor', 'Ogun', '1995-06-10', 'victor.ogun@gmail.com', '08112345678', '10 Ikenne Avenue', 'Ikenne', 'Ogun', 'Data Scientist', 'University of Lagos', 3.7, 3);

-- Checking the total number of applicants --
SELECT COUNT(*) AS total_applicants FROM applicants;

SELECT role_applied, COUNT(role_applied) FROM applicants
GROUP BY role_applied;

-- Checking the selection Criteria which is years experience and cgpa above 3.5--
SELECT * FROM applicants WHERE role_applied = 'Data Analyst' AND (cgpa >= 3.5 
AND years_of_experience >= 3);

SELECT COUNT(applicant_id) AS shortlisted_data_analysts FROM applicants WHERE
role_applied = 'Data Analyst' AND (cgpa >= 3.5 AND years_of_experience >= 3);

SELECT COUNT(applicant_id) AS shortlisted_data_scientists FROM applicants 
WHERE role_applied = 'Data Scientist' AND (cgpa >= 3.5 AND years_of_experience >= 3);

-- Creating new tables for the shortlisted Candidates --
CREATE TABLE shortlisted_data_analyst AS
SELECT * FROM applicants WHERE role_applied = 'Data Analyst' AND (cgpa >= 3.5 
AND years_of_experience >= 3);

CREATE TABLE shortlisted_data_scientist AS
SELECT * FROM applicants WHERE role_applied = 'Data Scientist' AND (cgpa >= 3.5 
AND years_of_experience >= 3);

-- Total Shortlisted candidate for technical interviews --
SELECT * FROM shortlisted_data_analyst
UNION ALL
SELECT * FROM shortlisted_data_scientist;

-- Creating columns (sql_score, excel_score, power_bi score, python_score ) for applicants table --
ALTER TABLE shortlisted_data_analyst 
ADD COLUMN sql_score INT CHECK (sql_score BETWEEN 1 AND 10),
ADD COLUMN excel_score INT CHECK (excel_score BETWEEN 1 AND 10),
ADD COLUMN power_bi INT CHECK (power_bi BETWEEN 1 AND 10),
ADD COLUMN python_score INT CHECK (python_score BETWEEN 1 AND 10);

SELECT * FROM shortlisted_data_analyst;

ALTER TABLE shortlisted_data_scientist
ADD COLUMN sql_score INT CHECK (sql_score BETWEEN 1 AND 10),
ADD COLUMN excel_score INT CHECK (excel_score BETWEEN 1 AND 10),
ADD COLUMN git INT CHECK (git BETWEEN 1 AND 10),
ADD COLUMN python_score INT CHECK (python_score BETWEEN 1 AND 10),
ADD COLUMN r_programming INT CHECK (r_programming BETWEEN 1 AND 10);

SELECT * FROM shortlisted_data_analyst;

-- Normalizing Tables--

CREATE TABLE new_applicants (applicant_id INT PRIMARY KEY AUTO_INCREMENT);

INSERT INTO new_applicants (applicant_id)
SELECT applicant_id FROM applicants;

CREATE TABLE applicants_bio (
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
applicant_id INT,
dob DATE NOT NULL CHECK (dob <= '2006-06-12'),
FOREIGN KEY (applicant_id) REFERENCES new_applicants(applicant_id)
);

INSERT INTO applicants_bio (first_name, last_name, applicant_id, dob)
SELECT first_name, last_name, applicant_id, dob FROM applicants;

SELECT * FROM applicant_contact;

CREATE TABLE applicant_contact (
email VARCHAR(50) NOT NULL CHECK (email LIKE '%@%.%'),
phone_number VARCHAR(14) NOT NULL CHECK (LENGTH(phone_number) = 11),
applicant_id INT,
FOREIGN KEY (applicant_id) REFERENCES new_applicants(applicant_id)
);

INSERT INTO applicant_contact (email, phone_number, applicant_id)
SELECT email, phone_number, applicant_id FROM applicants;

RENAME TABLE applicants_bio TO applicant_bio;

CREATE TABLE applicant_address (
address_line_one VARCHAR(50),
address_line_two VARCHAR(50),
state VARCHAR(20),
applicant_id INT,
FOREIGN KEY (applicant_id) REFERENCES new_applicants(applicant_id)
);

INSERT INTO applicant_address (address_line_one, address_line_two, state, applicant_id)
SELECT address_line_one, address_line_two, state, applicant_id FROM applicants;

SELECT * FROM applicant_address;

CREATE TABLE roles (
role_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
role_name VARCHAR(20) NOT NULL CHECK (role_name IN ('Data Analyst', 'Data Scientist'))

);

INSERT INTO roles (role_name) 
VALUES ( 'Data Analyst'),
		('Data Scientist');

SELECT * FROM roles;

CREATE TABLE applicant_roles (
role_id INT,
applicant_id INT,
FOREIGN KEY (role_id) REFERENCES roles(role_id),
FOREIGN KEY (applicant_id) REFERENCES new_applicants(applicant_id)
);

INSERT INTO applicant_roles (role_id, applicant_id)
SELECT 
    CASE 
        WHEN role_applied = 'Data Analyst' THEN 1
        WHEN role_applied = 'Data Scientist' THEN 2
        ELSE NULL
    END AS role_id,
    applicant_id
FROM applicants
WHERE role_applied IN ('Data Analyst', 'Data Scientist');

SELECT ab.applicant_id, ab.first_name, ab.last_name, r.role_name FROM applicant_bio AS ab
JOIN applicant_roles AS ar ON ab.applicant_id = ar.applicant_id
JOIN roles AS r ON ar.role_id = r.role_id WHERE r.role_name = 'Data Analyst';

CREATE TABLE instituion (
applicant_id INT,
institution_name VARCHAR(50),
FOREIGN KEY (applicant_id) REFERENCES new_applicants(applicant_id)
);

INSERT INTO instituion (applicant_id, institution_name)
SELECT applicant_id, school_attended FROM applicants;

SELECT * FROM instituion;

CREATE TABLE cgpa (
applicant_id INT,
cgpa DECIMAL(3,2) NOT NULL CHECK (cgpa BETWEEN 0.00 AND 5.00),
FOREIGN KEY (applicant_id) REFERENCES new_applicants(applicant_id)
);

INSERT INTO cgpa (applicant_id, cgpa)
SELECT applicant_id, cgpa FROM applicants;

CREATE TABLE experience(
applicant_id INT,
experience INT NOT NULL,
FOREIGN KEY (applicant_id) REFERENCES new_applicants(applicant_id)
);

INSERT INTO experience (applicant_id, experience)
SELECT applicant_id, years_of_experience FROM applicants;

ALTER TABLE shortlisted_data_scientist
DROP COLUMN first_name,
DROP COLUMN last_name;

ALTER TABLE shortlisted_data_scientist
DROP COLUMN email,
DROP COLUMN phone_number,
DROP COLUMN address_line_one,
DROP COLUMN address_line_two,
DROP COLUMN state,
DROP COLUMN role_applied,
DROP COLUMN school_attended,
DROP COLUMN cgpa,
DROP COLUMN years_of_experience;

SELECT applicant_id FROM shortlisted_data_analyst
UNION ALL
SELECT applicant_id FROM shortlisted_data_scientist;

SELECT * FROM applicant_bio;

-- Creating Table for Technical Interview round --
CREATE TABLE first_interview_round (
	applicant_id INT,
    sql_score INT CHECK (sql_score BETWEEN 1 AND 10),
    excel_score INT CHECK (excel_score BETWEEN 1 AND 10),
    power_bi_score INT CHECK (power_bi_score BETWEEN 1 AND 10),
    python_score INT CHECK (python_score BETWEEN 1 AND 10)
);

INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (2, 3, 6, 2, 3);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (6, 1, 3, 2, 1);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (16, 2, 2, 5, 4);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (18, 8, 5, 8, 1);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (22, 5, 8, 7, 5);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (40, 8, 10, 3, 1);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (48, 3, 2, 1, 4);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (56, 6, 3, 2, 3);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (64, 10, 6, 5, 1);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (80, 4, 4, 10, 1);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (97, 5, 9, 6, 8);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (99, 2, 9, 10, 2);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (109, 1, 4, 6, 7);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (121, 5, 9, 7, 10);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (123, 4, 9, 6, 5);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (9, 8, 2, 7, 3);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (11, 1, 4, 7, 10);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (19, 10, 5, 4, 2);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (25, 7, 10, 1, 4);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (27, 8, 3, 5, 10);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (37, 8, 3, 1, 10);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (45, 8, 3, 3, 9);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (59, 9, 5, 3, 5);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (61, 4, 7, 1, 5);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (69, 6, 1, 10, 6);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (83, 8, 9, 2, 7);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (85, 7, 9, 10, 10);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (96, 10, 4, 7, 2);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (106, 5, 10, 8, 3);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (108, 1, 8, 7, 10);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (110, 3, 8, 2, 2);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (112, 6, 7, 5, 1);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (114, 10, 7, 9, 5);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (118, 2, 8, 4, 1);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (120, 8, 2, 5, 9);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (128, 9, 4, 3, 9);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (130, 8, 5, 2, 2);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (132, 10, 2, 1, 5);
INSERT INTO first_interview_round (applicant_id, sql_score, excel_score, power_bi_score, python_score) VALUES (134, 2, 2, 2, 7);


SELECT * FROM first_interview_round;

SELECT * FROM first_interview_round
WHERE sql_score >=5 AND excel_score >= 5 AND power_bi_score >=5 AND python_score >= 5;

CREATE TABLE second_interview_round(
	applicant_id INT,
    interview_score INT 
);

INSERT INTO second_interview_round (applicant_id)
SELECT applicant_id FROM first_interview_round
WHERE sql_score >=5 AND excel_score >= 5 AND power_bi_score >=5 AND python_score >= 5;

SELECT * FROM second_interview_round;

ALTER TABLE second_interview_round
MODIFY interview_score INT CHECK (interview_score BETWEEN 1 AND 10);

UPDATE second_interview_round
SET interview_score = 3 WHERE applicant_id = 114;

ALTER TABLE instituion RENAME TO institution;

-- Joining to see candidate who scored above 8 for job offer --
SELECT ab.applicant_id, ab.first_name, ab.last_name, r.role_name, sir.interview_score FROM applicant_bio AS ab
JOIN second_interview_round AS sir ON ab.applicant_id = sir.applicant_id
JOIN applicant_roles AS ar ON sir.applicant_id = ar.applicant_id
JOIN roles AS r ON ar.role_id = r.role_id
WHERE interview_score >=8;

CREATE TABLE selected_applicants(
applicant_id INT NOT NULL
);

INSERT INTO selected_applicants(applicant_id)
SELECT applicant_id FROM second_interview_round 
WHERE interview_score >=8;

SELECT * FROM selected_applicants;


 