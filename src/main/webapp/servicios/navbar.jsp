<%@ page import="com.example.ef_g9.Beans.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:useBean id="usuario" type="com.example.ef_g9.Beans.Usuario" scope="session"
             class="com.example.ef_g9.Beans.Usuario"/>


<nav class="navbar navbar-expand-lg" style="background-color: #458BCA;" aria-label="Eighth navbar example">
  <div class="container">
    <ul class="nav col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 justify-content-center mb-md-0">
      <li><a href="#" class="nav-link px-2"><b style="color:#1A3B85"><%=usuario.getNombre() + usuario.getApellido()%></b></a></li>
    </ul>
    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
      <a class="dropdown-item" href="<%=request.getContextPath()%>/SessionServlet?action=logout"><u style="color:rgb(35,30,30)"> <b>Cerrar sesión> </b></u></a>
    </form>
  </div>
  </div>
</nav>


<%--<nav class="navbar navbar-expand-md navbar-light bg-light">
  <a class="navbar-brand" href="#">Gesti�n HR</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
    <ul class="navbar-nav">
      <% if (employee.getEmployeeId() > 0) { %>
      <li class="nav-item">
        <a class="nav-link <%=currentPage.equals("cou") ? "active" : ""%>"
           href="<%=request.getContextPath()%>/CountryServlet">
          Country
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link <%=currentPage.equals("loc") ? "active" : ""%>"
           href="<%=request.getContextPath()%>/LocationServlet">
          Location
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link <%=currentPage.equals("dep") ? "active" : ""%>"
           href="<%=request.getContextPath()%>/DepartmentServlet">
          Department
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link <%=currentPage.equals("emp") ? "active" : ""%>"
           href="<%=request.getContextPath()%>/EmployeeServlet">
          Employees
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link <%=currentPage.equals("job") ? "active" : ""%>"
           href="<%=request.getContextPath()%>/JobServlet">
          Jobs
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link <%=currentPage.equals("est") ? "active" : ""%>"
           href="<%=request.getContextPath()%>/EmployeeServlet?action=est">
          Estad�sticas
        </a>
      </li>
      <li class="nav-item">
                <span class="nav-link text-dark">
                    Bienvenido <%=employee.getFirstName()%> <%=employee.getLastName()%> (<a
                        href="<%=request.getContextPath()%>/LoginServlet?action=logout">cerrar sesi�n</a>)
                </span>
      </li>
      <% } else { %>
      <a class="nav-link" style="color: #007bff;" href="<%=request.getContextPath()%>/LoginServlet">(Iniciar
        Sesi�n)</a>
      <% } %>
    </ul>
  </div>
</nav>--%>
