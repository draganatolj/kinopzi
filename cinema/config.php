<?php
$host = "localhost:3306"; /* Host name */
$user = "fpmoz102019"; /* User */
$password = "csdigital2019"; /* Password */
$dbname = "fpmoz102019"; /* Database name */

$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if (!$con) {
 die("Connection failed: " . mysqli_connect_error());
}