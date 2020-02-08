<?php
if(isset($_POST['submit']))
{
        $servername = "localhost:3306";
        $username = "fpmoz102019";
        $password = "csdigital2019";
        $dbName="fpmoz102019";
        $link = new mysqli($servername, $username, $password, $dbName);
        $sql = "INSERT INTO bookingTable (  movieName,
                                            bookingTheatre,
                                            bookingType,
                                            bookingDate,
                                            bookingTime,
                                            bookingFName,
                                            bookingLName,
                                            bookingPNumber)
                VALUES ('".$_POST["theatre"]."',
                        '".$_POST["theatre"]."',
                        '".$_POST["type"]."',
                        '".$_POST["date"]."',
                        '".$_POST["hour"]."',
                        '".$_POST["fName"]."',
                        '".$_POST["lName"]."',
                        '".$_POST["pNumber"]."')";
                        }
        mysqli_close($link);
?>