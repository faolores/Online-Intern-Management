<?php 

$conn= new mysqli($_ENV['DB_HOST'] ?? 'localhost',$_ENV['DB_USER'] ?? 'root',$_ENV['DB_PASSWORD'] ?? '',$_ENV['DB_DATABASE'] ?? 'evaluation_db')or die("Could not connect to mysql".mysqli_error($con));
