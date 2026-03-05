SELECT 
    Student.StudentName, 
    Club.ClubName, 
    Membership.JoinDate
FROM Membership
JOIN Student ON Membership.StudentID = Student.StudentID
JOIN Club ON Membership.ClubName = Club.ClubName;