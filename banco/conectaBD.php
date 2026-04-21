<?php
//$username = 'root';
// $pass = 'admin';
//$pass = 'root';

//try {
//  $conn = new PDO('mysql:host=localhost;dbname=bd_tracolivre', $username, $pass);
//    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
// } catch(PDOException $e) {
//    echo 'ERROR: ' . $e->getMessage();
//}


    
  $host = "sql112.infinityfree.com"; // Seu nome de host no InfinityFree
  $user = "if0_40124757";      // Seu usuário do banco de dados no InfinityFree
  $a = "tracolivre";        // Sua senha do banco de dados no InfinityFree
  $dbName = "if0_40124757_tracolivre"; // O nome do seu banco de dados no InfinityFree

  try {
    // Use PDO para conectar ao banco de dados do InfinityFree    
      $conn = new PDO("mysql:host=$host;dbname=$dbName", $user, $a);
     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     
//      // Ajuste de fuso horário no MySQL
     $conn->exec("SET time_zone = '-03:00'");

     // Ajuste de fuso horário no PHP
     date_default_timezone_set('America/Sao_Paulo');
     
  } catch (PDOException $e) {
    die("Erro na conexão: " . $e->getMessage());
  }
?>