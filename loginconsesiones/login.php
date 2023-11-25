<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>login con sesiones </title>
        <link rel="stylesheet" href="styls.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
    </head>

    <body>
  <div class="container">
    <h2>Iniciar sesión</h2>
    <form method="post" name="Ingresar" action="LOGICA/loguear.php" >
      <div class="form-group">
        <label for="username">Nombre de usuario:</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="form-group">
        <button type="button" class="btn" onclick="redireccion()">Iniciar sesión</button>
      <script src="pb1.js"></script>
      </div>
      <div class="forgot-password">
        <a href="#">¿Olvidaste tu contraseña?</a>
      </div>
    </form>
    <script src ="pb1.js">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
