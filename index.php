<?php
    require('db.php');
    session_start();
    echo $_SESSION['logedin'];
    if($_SESSION['logedin']=='yes'){
       
        header("location:home.php");
    }
    else {
        header("location:login.html");
    }

?>
