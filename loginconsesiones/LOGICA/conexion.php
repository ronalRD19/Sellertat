<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        $host= "localhost";
        $usuario= "root";
        $clave= "";
        $bd="seller_tat";
        
        $conexion= mysqli_connect($host,$usuario,$clave, $bd);
        if ($conexion){
            echo "conectado correctamente";
        } else{
            echo "No se pudo conectar";
        }
        
        //echo " CONSULTA SQL CON ARREGLOS"."<br>"; 
           // echo "<br>";
           // if($resultado = $conexion->query("select IdLogin, usuario, clave from login")) {

               // while($registro = $resultado->fetch_assoc() ){

               // echo $registro["usuario"] . " " . $registro["clave"] . "\n" . "<br>";
               // } 
           //  }
             //$resultado->free();
             //$conexion->close();
        
        ?>
    </body>
</html>
