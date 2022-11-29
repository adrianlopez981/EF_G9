<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>R. Impresión 3D</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<style>
    body {
        background-size: cover;
        background-repeat:no-repeat;


    }
</style>
<body background="background.jpg">
<br><br><br><br><br><br>
<div class="modal-dialog modalCenter">
    <div class="modal-content" style="background: #000000">
        <div class="modal-body" >
            <form method="post" action="<%=request.getContextPath()%>/?action=login">

                <br>
                <h4 class="d-flex justify-content-center" style="color:white">Registro de Servicios</h4>
                <div class="form-floating mb-1">
                    <input name="user" type="text" class="form-control" id="floatingInput1" placeholder="User">
                    <label for="floatingInput1">Densidad de Pieza</label>
                </div>
                <div class="form-floating mb-1">
                    <input name="pass" type="password" class="form-control" id="floatingInput2" placeholder="Password">
                    <label for="floatingInput2">Grosor</label>
                </div>
                <div class="form-floating mb-1">
                    <input name="pass" type="password" class="form-control" id="floatingInput2" placeholder="Password">
                    <label for="floatingInput2">Altura</label>
                </div>
                <div class="form-floating mb-1">
                    <input name="pass" type="password" class="form-control" id="floatingInput2" placeholder="Password">
                    <label for="floatingInput2">Material</label>
                </div>
                <div class="form-floating mb-1">
                    <input name="pass" type="password" class="form-control" id="floatingInput2" placeholder="Password">
                    <label for="floatingInput2">Url Imagen</label>
                </div>

                <div class="input-group mb-1">
                    <select class="form-select" id="inputGroupSelect01">
                        <option selected>Autoservicio</option>
                        <option value="1">Si</option>
                        <option value="2">No</option>
                    </select>
                </div>
                <div class="form-floating mb-1" >
                    <button type="submit" class="btn btn-danger rounded-pill botonInicio border border-primary" style="transform: translateX(230%); background-color: black; color: #0d6efd">Registrarse</button>
                </div>
        </div>
        <%if(session.getAttribute("msg")!=null){%>
        <%if(session.getAttribute("msg").equals("errorNumero")){%>
        <div class="text-danger mb-2">DNI y Contraseña deben ser números</div>
        <%}%>
        <%if(session.getAttribute("msg").equals("errorSQL")){%>
        <div class="text-danger mb-2">Error de conexión con la base de Datos</div>
        <%}%>
        <%if(session.getAttribute("msg").equals("errorDNItam")){%>
        <div class="text-danger mb-2">El DNI debe ser de 8 dígitos</div>
        <%}%>
        <%if(session.getAttribute("msg").equals("noExiste")){%>
        <div class="text-danger mb-2">Usuario y/o Contraseña incorrectos</div>
        <%}%>
        <%session.removeAttribute("msg"); session.invalidate();%>
        <%}%>

        </form>

    </div>
</div>
</div>
</body>
</body>
</html>