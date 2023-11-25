<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>logueo de sesion </title>
    </head>
    <body>
        <?php
        require 'conexion.php'; 
        session_start();
        
        $usuario = $_POST["usuario"];
        $clave = $_POST["clave"];
        //echo $usuario;
        //echo $clave;
        
        $q = "SELECT COUNT(*) as contar from usuarios where Id_usuario='$clave' and Nombre= '$usuario'";
        $consulta = mysqli_query($conexion, $q);
        $array1 = mysqli_fetch_array($consulta);
        switch ($clave){
           case "80445681":
            if($array1['contar']>0){
                $_SESSION['username']= $usuario;
                header("location: ../perfilVendedor.php ");
                
            }else {
                echo "Datos incorrectos";
            }  
            break;
            case "80101245":
                if($array1['contar']>0){
                    $_SESSION['username']= $usuario;
                    header("location: ../perfilAdmon.php ");
                    
                }else {
                    echo "Datos incorrectos";
                }  
                break;
        }
        
        
        
        ?>
    </body>
</html>


