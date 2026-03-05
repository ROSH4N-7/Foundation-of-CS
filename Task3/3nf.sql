1) CREATE TABLE Mentor (
    ClubMentor VARCHAR(50) PRIMARY KEY,
    ClubRoom VARCHAR(10));
- Created table Mentor.

2) CREATE TABLE Club_3NF (
    ClubName VARCHAR(50) PRIMARY KEY,
    ClubMentor VARCHAR(50),
    FOREIGN KEY (ClubMentor) REFERENCES Mentor(ClubMentor));
- Created table club_3nf.

3) INSERT INTO Mentor VALUES 
('Mr. Raman', 'R101'),
('Ms. Sita', 'R202'),
('Mr. Kiran', 'R303'),
('Mr. Anil', 'Lab1');
- Inserted values in Mentor.

4) INSERT INTO Club_3NF VALUES 
('Music Club', 'Mr. Raman'),
('Sports Club', 'Ms. Sita'),
('Drama Club', 'Mr. Kiran'),
('Coding Club', 'Mr. Anil');
- Inserted values in club_3nf.