# 💇‍♀️ Salon de Coiffure – Full Stack Web Site

A complete **full-stack web site** designed for a beauty & hair salon, built using web fundamentals technologies . 
The system includes a **client interface** and a full **admin dashboard** for managing services, reservations, clients, and salon staff.


## 🧰 Technologies Used

### 🌐 Frontend
<p>
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white"/>
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white"/>
  <img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white"/>
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"/>
</p>

---

### 🖥️ Backend
<p>
  <img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white"/>
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
  <img src="https://img.shields.io/badge/AJAX-0052CC?style=for-the-badge&logo=javascript&logoColor=white"/>
  <img src="https://img.shields.io/badge/PHPMailer-232F3E?style=for-the-badge"/>
</p>

---

## 🗄️ Database & Structure

The system uses **a single MySQL database** containing all necessary tables:

- `users`
- `reservations`
- `prestations` ....



## 🚀 Features Overview

### 👤 Client Interface
- **Account creation & login**(with secure password hashing)
- **Password reset with secure email token**
- Browse all available **salon services**
- **Like** & save services into a **Favorites** section
- **Make reservations** with:
  - Date & time selection  
  - Optional **VIP déplacement**
  - Optionally choosing a preferred salon employee
  - Location auto-detection or manual address entry
- View all reservations  with their status in the **My Reservations** section 
- Receives **email notifications** for:
  - Reservation **accepted**
  - Reservation **refused**
  
---

### 🛠️ Admin Dashboard
Accessible only after successful admin login.

- Overview dashboard with salon statistics:
  - Total users  
  - Total reservations  
  - Most booked services  
  - Active users  
  - Users with too many cancellations  .....
- **User Management**  
  - View all users 
  - Delete suspicious / abusive users
- **Services Management (CRUD)**  
  - Full CRUD: add, update, delete  
  - Organized by service category 
- **Salon Staff Management**  
  - Add ,update or delete employees   
  - Display them to clients for service selection
- **Reservation Management**  
  - Accept / decline reservations  
  - PHPMailer automatically informs the client
- Integrated **search bar** (in all admin sections)
- Fully responsive admin UI



## 📂 Project Structure

/Site-salon-de-coiffure.zip → contains all source code:
/css
/html
/js
/php
/uploads
...
/salon_de_coiffure.sql → Database export (full schema + data)


🧩 Installation Guide

1️⃣ Clone the Repository
git clone https://github.com/lizamezioug/Site-salon-de-coiffure.git

cd Site-salon-de-coiffure

2️⃣ Extract the Source Code

Inside the repository, extract:

Site-salon-de-coiffure.zip



🗄️ Database Setup

1️⃣ Open phpMyAdmin

2️⃣ Create a new database

Example: salon_de_coiffure

3️⃣ Import the SQL file

Import the file included in the repo:

salon_de_coiffure.sql


This will automatically create:

all tables ,  relations and initial  data


🔧 PHP Database Configuration (config.php)


All PHP scripts connect through a single configuration file:

📌 php/config.php

<?php

$servername = "localhost";

$username = "root";

$password = "";

$dbname = "salon_de_coiffure";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {

    http_response_code(500);
    
    echo json_encode(['error' => 'La connexion a échoué: ' . $conn->connect_error]);
    
    exit();
    
}

?>


➡️ Only modify:

$username

$password

$dbname

if your environment requires different credentials.

All other PHP files automatically include this configuration — nothing else to change.

▶️ Running the Project
1️⃣ Start your local server

Compatible with:

WAMP

XAMPP

LAMP

2️⃣ Move the extracted folder into your server directory
www/     (WAMP)
htdocs/  (XAMPP)

3️⃣ Launch the site
http://localhost/Salon-de-coiffure/

📮 Email Notifications (PHPMailer)

To enable automatic email alerts:

Open the PHPMailer configuration file in the project.

Add your SMTP credentials.

The system will automatically email users when:

a reservation is accepted

a reservation is refused
