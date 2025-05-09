# Capstone Project

This repository contains the source code for **Capstone**, a web-based system built using PHP and MySQL. The application is designed to run on a local development environment using **XAMPP**.

---

## 📦 Project Structure
capstone/
├── conn.php # Database connection file
├── index.php # Entry point
├── /assets/ # CSS, JS, images, etc.
├── /pages/ # Additional PHP pages
├── /database/
│ └── csms_system.sql # MySQL database export
└── README.md

---

## 🛠 Requirements

- [XAMPP](https://www.apachefriends.org/index.html) (PHP 7.x or newer, MySQL)
- Web browser (Chrome, Firefox, Edge, etc.)

---

## 🚀 Setup Instructions

### 1. Install XAMPP
- Download and install from [https://www.apachefriends.org](https://www.apachefriends.org).
- Launch the **XAMPP Control Panel** and start both **Apache** and **MySQL**.

### 2. Copy the Project
- Place the entire `capstone` project folder inside the `htdocs` directory.
  - Example: `C:\xampp\htdocs\capstone`

### 3. Import the Database
- Open your browser and go to: `http://localhost/phpmyadmin`
- Create a new database named: `csms_system`
- Click on the new database, go to the **Import** tab
- Choose the `csms_system.sql` file from the `/database/` folder
- Click **Go** to import the structure and data

### 4. Configure Database Connection
- Open the file `conn.php`
- Ensure the settings match your XAMPP MySQL credentials (default shown below):

```php
$host = 'localhost';
$dbname = 'csms_system';
$username = 'root';
$password = '';
