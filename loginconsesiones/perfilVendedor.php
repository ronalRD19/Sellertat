<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login con sesiones</title>
    </head>
    <body>
        <?php
        session_start();
        
        $usuario = $_SESSION['username'];
               
        if(!isset($usuario)){
            header("location: login.php");
        }else{
        
        echo " <h1> Bienvenido sr Vendedor $usuario </h1> ";
        echo "<a href= 'LOGICA/salir.php'> SALIR </a>" ; 
        }       
        ?>
    </body>
</html>
