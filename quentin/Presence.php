<?php
// presence.php

// Connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "cube3_bdd";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Logique de mise à jour de la présence
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user_id = $_POST['user_id'];
    $presence_status = 1; // Par exemple, 1 pour présent

    $sql = "UPDATE users SET presence_status = $presence_status WHERE id = $user_id";
    if ($conn->query($sql) === TRUE) {
        echo "Tu es bien présent.";
    } else {
        echo "Erreur: " . $conn->error;
    }
}

$conn->close();
?>
