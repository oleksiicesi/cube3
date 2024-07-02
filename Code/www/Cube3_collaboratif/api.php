<?php
// Paramètres de connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "cube3_test";

// Création de la connexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérification de la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Récupération des données du formulaire
$email = $_POST['email'];
$pass = password_hash($_POST['password'], PASSWORD_DEFAULT);
$rememberme = isset($_POST['souvenir']) ? 1 : 0; // Set to 1 if checked, 0 if not

// Préparation de la requête SQL
$sql = "INSERT INTO users (email, pass, rememberme) VALUES (?, ?, ?)";

// Préparation et liaison des paramètres
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssi", $email, $pass, $rememberme); // 'ssi' indicates string, string, integer

// Exécution de la requête
if ($stmt->execute()) {
    echo "Inscription réussie!";
} else {
    echo "Erreur: " . $sql . "<br>" . $conn->error;
}

// Fermeture de la connexion
$stmt->close();
$conn->close();
?>
