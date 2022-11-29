
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Registro de Servicios</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>

<body background="background.jpg">
<br><br><br><br><br><br>
<nav class="navbar navbar-expand-lg" style="background-color: #458BCA;" aria-label="Eighth navbar example">
  <div class="container">
      <ul class="nav col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 justify-content-center mb-md-0">
        <li><a href="#" class="nav-link px-2"><b style="color:#1A3B85"><%=userlogged.getNombre() + userlogged.getApellido()%></b></a></li>
      </ul>
      <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
        <a class="dropdown-item" href="<%=request.getContextPath()%>/ServletInicio?action=logout"><u style="color:rgb(35,30,30)"> <b>Cerrar sesión> </b></u></a>
      </form>
    </div>
  </div>
</nav>


<div class="modal-dialog modalCenter">
  <div class="modal-content" style="background: #000000">
    <div class="modal-body" >

      <table class="table table-dark table-hover">
        <thead>
        <tr>
          <th scope="col" class="text-center">Tipo de Servicio</th>
          <th scope="col" class="text-center">Fecha de Registro</th>
          <th scope="col" class="text-center">Tiempo de Realización</th>
          <th scope="col" class="text-center">Costo</th>
        </tr>
        </thead>
      </table>




    </div>
</div>
</div>
</body>

</html>
