<?php
session_start();

include('../..//server/conn.php');
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $note_id = $_GET['id'];
    $title = $_POST['title'];
    $description = $_POST['description'];

  
    try {
        $sql = "UPDATE admin_notes SET title = :title, description = :description WHERE id = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':description', $description);
        $stmt->bindParam(':id', $note_id);

        if ($stmt->execute()) {
            $_SESSION['STATUS'] = "NOTES_EDITION_SUCCESFUL";
            header("Location: ../../../index.php");
            exit();
        } else {
            echo "Error updating note.";
        }
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
