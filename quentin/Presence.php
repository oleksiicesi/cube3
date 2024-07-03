<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $user_id = $_POST['user_id'];
    $current_time = date('Y-m-d H:i:s');

    // Connexion à la base de données
    $servername = "localhost";
    $username = "username";
    $password = "password";
    $dbname = "cube3";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Insertion de la présence
    $sql = "INSERT INTO signature (dates_heure_signature, Id_users) VALUES ('$current_time', '$user_id')";
    if ($conn->query($sql) === TRUE) {
        echo "Tu es bien présent";
    } else {
        echo "Erreur: " . $conn->error;
    }

    $conn->close();
}
?>
