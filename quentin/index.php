<?php
// index.php

// Connexion à la base de données
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "cube3";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Logique de mise à jour de la présence
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['presence'])) {
    $user_id = $_POST['user_id'];
    $presence_status = 1; // Par exemple, 1 pour présent

    $sql = "UPDATE users SET presence_status = $presence_status WHERE id = $user_id";
    if ($conn->query($sql) === TRUE) {
        echo "Présence mise à jour avec succès";
    } else {
        echo "Erreur: " . $conn->error;
    }
}

$conn->close();
?>
