<?php
session_start();
header('Content-Type: application/json');

include('../../server/conn.php');


    $title = htmlspecialchars($_POST['title']);
    $description = htmlspecialchars($_POST['description']);
    $datetime_created = date('Y-m-d H:i:s');

    $sql = "INSERT INTO admin_notes (title, description, datetime_created) VALUES (:title, :description, :datetime_created)";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':description', $description);
    $stmt->bindParam(':datetime_created', $datetime_created);

    if ($stmt->execute()) {
        $id = $pdo->lastInsertId();
        $sql = "SELECT * FROM admin_notes WHERE id = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        $note = $stmt->fetch(PDO::FETCH_ASSOC);

        $_SESSION['STATUS'] = "ADD_NOTES_SUCCESS";
        header("Location: ../../../index.php");
    } else {
        $_SESSION['STATUS'] = "ADD_NOTES_FAIL";
        header("Location: ../../../index.php");
    }
?>
