 <%--Document   : Login
Created on : 30/09/2018, 03:57:50 PM
Author     : hectorsama, luis
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body id="page-top">
    <jsp:include page='header.jsp'>
    <jsp:param name="title" value="Inicia Sesión"/>
</jsp:include>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/login.css"/>"> 
        <title>Registro</title>
    </head>
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Bienvenido</h2>
            <h3 class="section-subheading text-muted">Unete a nuestra comunidad.</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <form action="${pageContext.request.contextPath}/login" method="POST" class="login-form">
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <input class="form-control" name="username" id="email" type="email" placeholder="Correo" data-validation-required-message="Por favor, acomplete el formulario">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-12">                    
                  <div class="form-group">
                    <input class="form-control" id="phone" name="password" type="password" placeholder="Contraseña" data-validation-required-message="Por favor, acomplete el formulario">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit" id="Login">Iniciar Sesión</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
</body>
