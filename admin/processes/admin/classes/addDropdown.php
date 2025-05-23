<?php
require '../../../processes/server/conn.php';
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Collect form data
    $class = $_POST['selectedClassAdd'];
    $subjectName = $_POST['subjectNameClassDropdown'];
    $subjectName = preg_replace('/\s*\(.*?\)\s*|\s*\[.*?\]\s*/', '', $subjectName);
    $subjectType = $_POST['subjectTypeClass'];  // Added this line to fetch the subjectType
    
    
    $teacher = $_POST['teacher'];
    $semester = $_POST['semester'];
    $classDesc = $_POST['classDesc'];  
    $status = "accepted";

    // Check for empty fields
    if (empty($class) || empty($subjectName) || empty($subjectType) || empty($teacher) || empty($semester) || empty($classDesc)) {
        echo json_encode(['success' => false, 'message' => 'All fields are required.']);
        exit;
    }

    
    // Get the subject code and id for the given subject name
    $sql = "SELECT id AS subject_id, type, code FROM subjects WHERE name = :subjectName";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':subjectName', $subjectName, PDO::PARAM_STR);
    $stmt->execute();

    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($result) {
        $subjectCode = $result['code'];
        $type = $result['type'];
        $subject_id = $result['subject_id'];  // Get subject_id here
    } else {
        echo json_encode(['success' => false, 'message' => 'Subject not found.']);
        exit;
    }

    // Generate a unique class code
    function generateClassCode($length = 6)
    {
        $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        $classCode = '';
        for ($i = 0; $i < $length; $i++) {
            $classCode .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $classCode;
    }

    try {
        echo $subject_id;
        // Check if the class with the same subject_id already exists
        $checkClassStmt = $pdo->prepare("SELECT * FROM classes WHERE subject_id = :subject_id AND type = :subject_type ");
        $checkClassStmt->bindParam(':subject_type',   $subjectType, PDO::PARAM_INT);
        $checkClassStmt->bindParam(':subject_id', $subject_id, PDO::PARAM_INT);
        $checkClassStmt->execute();

        echo "Rows found: " . $checkClassStmt->rowCount(); // Debugging output

        if ($checkClassStmt->rowCount() > 0) {
            // Class already exists with that subject_id
            $_SESSION['STATUS'] = "NEW_CLASS_EXISTS";
            header('Location: ../../../class_management.php');
            exit;
        }

        

        // Generate a unique class code
        $classCode = generateClassCode();

        // Insert the new class into the classes table
        $stmt = $pdo->prepare("INSERT INTO classes (name, code, type, subject, subject_id, teacher, semester, description, studentTotal, classCode, status) 
                               VALUES (:name, :code, :type, :subject, :subject_id, :teacher, :semester, :classDesc, 0, :classCode, :status)");
        $stmt->bindParam(':name', $class, PDO::PARAM_STR);
        $stmt->bindParam(':code', $subjectCode, PDO::PARAM_STR);
        $stmt->bindParam(':type', $subjectType, PDO::PARAM_STR);  // Insert the subjectType here
        $stmt->bindParam(':subject', $subjectName, PDO::PARAM_STR);
        $stmt->bindParam(':subject_id', $subject_id, PDO::PARAM_INT);  // Insert the subject_id here
        $stmt->bindParam(':teacher', $teacher, PDO::PARAM_STR);
        $stmt->bindParam(':semester', $semester, PDO::PARAM_STR);
        $stmt->bindParam(':classDesc', $classDesc, PDO::PARAM_STR);
        $stmt->bindParam(':classCode', $classCode, PDO::PARAM_STR);
        $stmt->bindParam(':status', $status, PDO::PARAM_STR);

        if ($stmt->execute()) {
            $_SESSION['STATUS'] = "ADDED_NEW_CLASS_SUCCESS";

            $getStaffIdQuery = "SELECT id FROM staff_accounts WHERE fullName = :fullName LIMIT 1";
            $getStaffIdStmt = $pdo->prepare($getStaffIdQuery);
            $getStaffIdStmt->execute([
                ':fullName' =>$teacher 
            ]);

            // Fetch the result
            $staffAccount = $getStaffIdStmt->fetch(PDO::FETCH_ASSOC);

            if ($staffAccount) {
                $teacherId = $staffAccount['id']; // Retrieved ID
                echo "Teacher ID: " . $teacherId;
            } else {
                echo "No matching staff member found with the name: " . htmlspecialchars($requestor);
            }

            $notificationTitle = 'You have been assigned as a teacher for ' . htmlspecialchars($class) . ' to be taught under subject of: ' . htmlspecialchars($subjectName) . '!';
            $notificationDescription = 'You have been assigned as the teacher for ' . htmlspecialchars($class) . ', under the subject of ' . htmlspecialchars($subjectName) . '. Please review the class details and prepare for its integration.';
            $date = date('Y-m-d H:i:s'); // Correct date format
            $link = '/staff/class_management.php';
            $type = "class";
            try {
                $insertStaffNotificationQuery = "INSERT INTO staff_notifications (user_id, type, title, description, date, link) 
                                                  VALUES (:user_id, :type, :title, :description, :date, :link)";
                $insertStaffNotificationStmt = $pdo->prepare($insertStaffNotificationQuery);
                $insertStaffNotificationStmt->execute([
                    ':user_id' => $teacherId,
                    ':type' => $type,
                    ':title' => $notificationTitle,
                    ':description' => $notificationDescription,
                    ':date' => $date,
                    ':link' => $link,
                ]);
                echo "Notification successfully inserted!";
            } catch (PDOException $e) {
                echo "Error: " . $e->getMessage();
            }


            header('Location: ../../../class_management.php');
        } else {
            $_SESSION['STATUS'] = "ADDED_NEW_CLASS_FAILED";
            header('Location: ../../../class_management.php');
        }
    } catch (PDOException $e) {
        $_SESSION['STATUS'] = "ADDED_NEW_CLASS_FAILED";
        echo 'Error: ' . $e->getMessage();  // For debugging, log this in production
        header('Location: ../../../class_management.php');
    }
}
