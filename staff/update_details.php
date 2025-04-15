<?php
// Start output buffering to prevent header errors due to early output
ob_start();
session_start();

// Check if teacher is logged in
if (!isset($_SESSION['teacher_id'])) {
    $_SESSION['STATUS'] = "TEACHER_NOT_LOGGED_IN";
    header("Location: ../login/index.php");
    exit;
}

include('processes/server/conn.php');

try {
    // Get the teacher's ID
    $teacher_id = $_SESSION['teacher_id'];

    // Check if the form has been submitted
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Get the data from the form
        $firstName = $_POST['firstName'];
        $middleName = $_POST['middleName'];
        $lastName = $_POST['lastName'];
        $fullName = $firstName . " " . $middleName . " " . $lastName;

        $email = $_POST['email'];
        $password = isset($_POST['password']) && !empty($_POST['password'])
            ? password_hash($_POST['password'], PASSWORD_DEFAULT)
            : null; // Only hash the password if provided
        $department = $_POST['department'];
        $phone_number = $_POST['phone_number'];
        $gender = $_POST['gender'];

        // Build the SQL query
        $query = "UPDATE staff_accounts 
                  SET first_name = :first_name, middle_name = :middle_name, last_name = :last_name, fullName = :fullName, email = :email, department = :department, 
                      phone_number = :phone_number, gender = :gender";

        if ($password) {
            $query .= ", password = :password";
        }
        $query .= " WHERE id = :teacher_id";

        // Prepare the query
        $stmt = $pdo->prepare($query);

        // Bind parameters
        $params = [
            'first_name' => $firstName,
            'middle_name' => $middleName,
            'last_name' => $lastName,
            'fullName' => $fullName,
            'email' => $email,
            'department' => $department,
            'phone_number' => $phone_number,
            'gender' => $gender,
            'teacher_id' => $teacher_id
        ];
        if ($password) {
            $params['password'] = $password;
        }

        // Execute the query
        $stmt->execute($params);

        // Add a notification for the admin
        $adminTitle = "Staff Account Updated";
        $adminDescription = "The profile for staff member $fullName has been updated.";
        $adminLink = "/capstone/admin/teacher_management.php"; 
        $adminType = "teacher"; 
        $adminStatus = "unread"; 

        $adminNotificationStmt = $pdo->prepare("INSERT INTO admin_notifications (type, title, description, date, link, status) 
            VALUES (:type, :title, :description, NOW(), :link, :status)");

        $adminNotificationStmt->execute([
            'type' => $adminType,
            'title' => $adminTitle,
            'description' => $adminDescription,
            'link' => $adminLink,
            'status' => $adminStatus
        ]);

        $_SESSION['STATUS'] = "NEW_INFO_SUCCESSFUL";
        
        // Redirect back to the previous page
        $previousPage = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : 'defaultPage.php';
        header('Location: ' . $previousPage);
        exit;
    }
} catch (PDOException $e) {
    $errorMessage = "Database Error: " . $e->getMessage() . "\n";
    $errorDetails = "Date: " . date('Y-m-d H:i:s') . "\n" . "File: " . __FILE__ . "\n" . "Line: " . $e->getLine() . "\n";
    $logData = $errorMessage . $errorDetails;

    // Save to a text file
    file_put_contents('error_log.txt', $logData, FILE_APPEND);

    // Handle session and redirect back to the previous page
    $_SESSION['STATUS'] = "NEW_INFO_ERROR";
    $previousPage = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : 'defaultPage.php';
    header('Location: ' . $previousPage);
    exit;
} catch (Exception $e) {
    $errorMessage = "General Error: " . $e->getMessage() . "\n";
    $errorDetails = "Date: " . date('Y-m-d H:i:s') . "\n" . "File: " . __FILE__ . "\n" . "Line: " . $e->getLine() . "\n";
    $logData = $errorMessage . $errorDetails;

    // Save to a text file
    file_put_contents('error_log.txt', $logData, FILE_APPEND);

    // Handle session and redirect back to the previous page
    $_SESSION['STATUS'] = "NEW_INFO_ERROR";
    $previousPage = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : 'defaultPage.php';
    header('Location: ' . $previousPage);
    exit;
}

// End output buffering
ob_end_flush();
?>
