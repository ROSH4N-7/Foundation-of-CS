# 🗄️ Task 3 - College Club Membership Management And Sql
## 🎯 Objective
This project demonstrates the systematic process of **Database Normalisation** using a college club membership scenario. The goal was to transform a poorly designed, unnormalised table into a structured relational database across **First (1NF)**, **Second (2NF)**, and **Third (3NF)** Normal Forms. The final architecture ensures data integrity and eliminates redundancy.

## Data normalisation
1️⃣ Unnormalised Form (UNF)
In its initial state, the database was a single "Mega Table" where student details (names, emails) were duplicated every time a student joined a new club. This created several risks:

Update Anomaly: If a student changed their email, every row containing that student had to be manually updated.

Deletion Anomaly: If a club was disbanded and its row deleted, the student's information might be lost entirely if they were only in that one club.

Insertion Anomaly: A new student couldn't be added to the system unless they joined a club immediately.

## 2️⃣ First Normal Form (1NF)
To reach 1NF, we flattened the structure and ensured data integrity:

Atomic Values: Every cell contains only one piece of information (e.g., no multiple club names in one cell).

Unique Identification: We established a Composite Primary Key consisting of (StudentID, ClubName) to ensure every record of a student joining a club is unique.

## 3️⃣ Second Normal Form (2NF)
The transition to 2NF focused on removing Partial Functional Dependencies. In 1NF, StudentName only depended on StudentID, not the whole composite key. We resolved this by splitting the data into three entities:

Student Table: Stores personal details linked to StudentID.

Club Table: Stores club-specific details linked to ClubName.

Membership Table: Acts as a "Bridge" to track the Many-to-Many relationship, storing only IDs and the JoinDate.

## 4️⃣ Third Normal Form (3NF)
To achieve the highest level of integrity, we eliminated Transitive Dependencies. We noticed that ClubRoom actually depended on the ClubMentor, who in turn depended on the ClubName. To fix this, we created a fourth table:

Mentor Table: This table maps the ClubMentor to their specific ClubRoom.

Result: Non-key attributes now depend only on the primary key, satisfying the "The Key, The Whole Key, and Nothing But The Key" rule.

## CONCLUSION
The project successfully transformed a "Flat File" database into a structured Third Normal Form (3NF) relational system. By following these steps, we achieved the following:

Eliminated Data Redundancy: Moving from a single table (UNF) to four specialized tables (Student, Club, Membership, Mentor) ensures that data like email addresses and room numbers are stored only once.

Resolved Many-to-Many Relationships: The creation of the Membership table as a bridge allowed us to accurately link many students to many different clubs without duplicating entire rows of data.

Fixed Transitive Dependencies: By separating the Mentor and ClubRoom into their own table in 3NF, we ensured that every attribute depends strictly on its own primary key, making the database much easier to maintain.

Optimized Data Retrieval: Using SQL JOINs, we proved that a normalized database remains highly functional, allowing us to reconstruct complete views (like Student Name + Club Name) while keeping the background storage clean and efficient.