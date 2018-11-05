<%-- 
    Document   : headerProfesores
    Created on : 15/10/2018, 11:28:16 AM
    Author     : hectorsama
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
     <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

   <title>${param.title}</title>
   
   <!-- Page styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.min.css">
                

        <link rel="stylesheet" href="//storage.googleapis.com/code.getmdl.io/1.0.1/material.teal-red.min.css" />
        <script src="//storage.googleapis.com/code.getmdl.io/1.0.1/material.min.js"></script>
        
        <link rel="stylesheet"  type = "text/css" href="<c:url value="/css/styles.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/register.css"/>"> 
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>      
        <style>
            #view-source {
                position: fixed;
                display: block;
                right: 0;
                bottom: 0;
                margin-right: 40px;
                margin-bottom: 40px;
                z-index: 900;
            }
            label.input-custom-file input[type=file] {
                display: none;
            }
        </style>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Custom styles for this template -->
    <link href="<c:url value="../css/agency.min.css"/>" rel="stylesheet">    
    <link href="<c:url value="../font-awesome-4.7/css/font-awesome.min.css"/>" rel="stylesheet">

  </head>

 

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="${pageContext.request.contextPath}/alumno/inicio">KAAB</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/profesor/vermiperfilprofesor">Mi Perfil</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/profesor/mostrarasesorias">Ver mis Asesorias</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath}/logout">Cerrar Sesión</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Contact form JavaScript -->
    <script src="<c:url value="../js/jqBootstrapValidation.js"/>"></script>

    <!-- Custom scripts for this template -->
    <script src="<c:url value="../js/agency.min.js"/>"></script>
