# Foundation-of-CS
This my project for semester 1 for module: Foundation of Computer Science


# 📚 Overall README

Welcome to my College Projects Repository! This repo showcases various tasks and projects I've completed as part of my coursework, focusing on key concepts in computer science, data management, and security. Each task demonstrates practical applications of theoretical knowledge, with detailed documentation, code examples, and analyses.

The projects included here cover topics like data encoding for secure transmission and database normalization for efficient data storage. Feel free to explore, contribute, or use them as references!

## 🎯 Objectives
- Demonstrate understanding of secure data handling and database design principles.
- Apply real-world scenarios to solve problems in encoding formats and relational databases.
- Ensure projects are well-structured, normalized, and optimized for performance and security.

## 📑 Table of Contents
- [Task 1: Secure Encoding Project](#task-1-secure-encoding-project)
- [Task 3: College Club Membership Management and SQL](#task-3-college-club-membership-management-and-sql)
- [License](#license)

# 🔒 Task 1: Secure Encoding Project

This task explores key encoding formats—ASCII, Hexadecimal (Hex), Base64, and URL (percent) encoding—and their role in enabling secure, reliable data exchange over text-based protocols like HTTP/HTTPS and TLS. It covers handling binary and special-character data, preventing injection attacks, integration with web standards (REST APIs, OAuth), and addressing security risks from obfuscation. Performance impacts and optimization recommendations are also included.

The project highlights encoding as a complement to encryption, with alignments to data modeling, endpoint protection, and overhead management.

### 🔑 Encoding Formats Summary
Quick overview of the formats:

#### 🔤 ASCII Encoding
- Uses 7 bits for 128 characters (0-127).
- **Strengths**: Lightweight, human-readable for English, universal compatibility.
- **Weaknesses**: No support for binary, emojis, or non-English characters without extensions (e.g., UTF-8).
- **Best for**: Basic text in legacy systems.

#### 🔢 Hexadecimal (Hex) Encoding
- Maps each byte to two chars (0-9, A-F).
- **Strengths**: Simple for debugging and crypto (hashes, keys).
- **Weaknesses**: 100% size increase; inefficient for large data.
- **Best for**: Low-level representations.

#### 📦 Base64 Encoding
- Converts 3 bytes to 4 chars from 64-alphabet (A-Z, a-z, 0-9, +, /; = padding).
- **Strengths**: Ideal for binary-to-text; used in email, JSON, JWT.
- **Weaknesses**: ~33% overhead; reversible, not secure alone.
- **Best for**: Embedding binaries in text channels.

#### 🔗 URL Encoding (Percent-Encoding)
- Replaces unsafe chars with % + two hex digits.
- **Strengths**: Prevents HTTP request corruption; auto-handled by frameworks.
- **Weaknesses**: URL-only; needs combo with others for binary.
- **Best for**: Query strings and paths; injection prevention.

### 🌟 Key Highlights
- **Security and Transmission**: Encoding escapes characters to avoid injections (XSS, SQL) in HTTP; pairs with TLS for confidentiality/integrity.
- **Protocol Integration**: Works in REST APIs, OAuth, and HTTPS flows.
- **Real-World Examples**: Email attachments, Basic Auth, API file uploads.
- **Risks**: Obfuscation in attacks like Log4Shell.
- **Recommendations**: Use Base64url, compress data, add encryption, validate inputs.
- **Performance**: Base64 ~33% overhead; Hex 100%.

# 🗄️ Task 3: College Club Membership Management and SQL

This task demonstrates the systematic process of **Database Normalisation** using a college club membership scenario. The goal was to transform a poorly designed, unnormalised table into a structured relational database across **First (1NF)**, **Second (2NF)**, and **Third (3NF)** Normal Forms. The final architecture ensures data integrity and eliminates redundancy.

### 📊 Data Normalization
#### 1️⃣ Unnormalized Form (UNF)
A single "Mega Table" with duplicated student details per club join, leading to:
- Update Anomaly: Manual updates for changes like email.
- Deletion Anomaly: Loss of student data if club is deleted.
- Insertion Anomaly: Can't add students without a club.

#### 2️⃣ First Normal Form (1NF)
- Atomic Values: Single info per cell.
- Composite Primary Key: (StudentID, ClubName) for uniqueness.

#### 3️⃣ Second Normal Form (2NF)
Removed partial dependencies by splitting into:
- Student Table: Personal details with StudentID.
- Club Table: Club details with ClubName.
- Membership Table: Bridge for Many-to-Many, with IDs and JoinDate.

#### 4️⃣ Third Normal Form (3NF)
Eliminated transitive dependencies by adding:
- Mentor Table: Maps ClubMentor to ClubRoom.
Result: Attributes depend only on primary keys.

### 🏆 Conclusion
Transformed flat file to 3NF with four tables, eliminating redundancy, resolving relationships, fixing dependencies, and optimizing retrieval via SQL JOINs.

# 📜 License
This project is open for educational purposes. Feel free to use and modify it. 
This is prepared by Roshan Khanal