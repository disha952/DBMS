<?php

$x1=$_POST['PNO'];
$x2=$_POST['PNAME'];
$x3=$_POST['MOBILENO'];
$x4=$_POST['ADDRESS'];
$x5=$_POST['BUSNO'];

$servername= 'localhost';
$username = 'root';
$password = '';
$dbname = 'crc';

//$mysqli = new mysqli("localhost", "username", "password", "dbname");

$conn = new mysqli($servername, $username, $password, $dbname);

echo "Connection successful!" . "<bc>";
$sql = "INSERT INTO user1 (PNO,PNAME,MOBILENO,ADDRESS,BUSNO) VALUES ('$x1','$x2','$x3','$x4','$x5')";

if($conn->query($sql) === TRUE){
 echo "New record created successfully";
} else {
 echo "<bc> Error: " .  $sql . "<br>" . $conn->error;
}

$conn->close();
?>