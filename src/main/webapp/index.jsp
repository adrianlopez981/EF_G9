<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Inicio Sesión</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
    </head>
    <body>
        <style>
            body {
                background-size: cover;
                background-repeat: no-repeat;


            }
        </style>
        <body background="background.jpg">
            <br><br><br><br><br><br>
            <div class="modal-dialog modalCenter">
                <div class="modal-content" style="background: #000000">
                    <div class="modal-body">
                        <form method="post" action="<%=request.getContextPath()%>/SessionServlet">

                            <br>
                            <h4 class="d-flex justify-content-center" style="color:white">Iniciar Sesión</h4>
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInput" name="inputEmail"
                                       placeholder="name@example.com">
                                <label for="floatingInput">Email address</label>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control" id="floatingPassword" name="inputPassword"
                                       placeholder="Password">
                                <label for="floatingPassword">Password</label>
                            </div>
                            <button type="submit" class="btn btn-danger rounded-pill botonInicio border border-primary"
                                    style="transform: translateX(230%); background-color: black; color: #0d6efd">
                                Ingresar
                            </button>
                            <p class="message">¿No se encuentra registrado? <a href="#">Create an account</a></p>
                            <% if (request.getAttribute("err") != null) { %>
                            <div class="text-danger mt-2">
                                <%=request.getAttribute("err")%>
                            </div>
                            <%} %>

                        </form>
                    </div>
                </div>
            </div>
        </body>
    </body>
</html>