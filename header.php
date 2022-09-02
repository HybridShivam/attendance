<?php

//header.php

include('admin/database_connection.php');
session_start();

if(!isset($_SESSION["teacher_id"]))
{
  header('location:login.php');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Attendance System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="theme-color" content="#343a40">
  <link href="css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/dataTables.bootstrap4.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.dataTables.min.js"></script>
  <script src="js/dataTables.bootstrap4.min.js"></script>
  <script src="js/script.js"></script>
  <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
  <link rel="manifest" href="site.webmanifest">
</head>
<body>

<!-- <div class="jumbotron-small text-center" style="margin-bottom:0">
  <h1 class="alleynFont my-4">Student Attendance System</h1>
</div> -->

<nav id="navbar" class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top coolShadow">
  <a class="navbar-brand" href="index.php">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="profile.php">Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="attendance.php">Attendance</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php">Logout</a>
      </li>  
    </ul>
  </div>  
</nav>