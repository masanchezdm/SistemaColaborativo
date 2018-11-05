<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body id="page-top">
<jsp:include page='headerProfesores.jsp'>
    <jsp:param name="Mi Perfil" value="Página principal"/>
</jsp:include>
    <style>
        a {
            color: black;
            font-weight: bold;
        }
    </style>
    <section id="services">
        <div class="container"  >
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Servicios</h2>
            <h3 class="section-subheading text-muted">Administra tu cuenta</h3>
          </div>
        </div>
        <div class="row text-center" style="text-align: center">
          <div class="col-md-4">
            <span class="fa-stack fa-4x">
<!--              <i class="fas fa-circle fa-stack-2x text-primary"></i>
              <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>-->
            <img src="<c:url value="../imagenes/calendario.svg" />" style="width: 100px; height: 100px" >
            </span>
            <!--<h4 class="service-heading">Gestiona tu perfil de trabajo</h4>-->
            <h4 class="service-heading"><a href="${pageContext.request.contextPath}/profesor/mostrarhorario">Gestiona tu perfil de trabajo</a></h4>
            
            <p class="text-muted">Describir brevemente las acciones dentro de la pagina</p>
          </div>
            <c:choose>
              <c:when test="${profesor.getEstaActivo()}">
                <div class="col-md-4">
                  <span class="fa-stack fa-4x">
<!--                    <i class="fas fa-circle fa-stack-2x text-primary"></i>
                    <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>-->
                  <img src="<c:url value="../imagenes/info_lista.svg" />" style="width: 100px; height: 100px" >
                  </span>
                  <h4 class="service-heading"><a href="${pageContext.request.contextPath}/profesor/actualizaprofesor">actualiza tu perfil</a> </h4>
                  <p class="text-muted">Describir brevemente las acciones dentro de la pagina</p>
                </div>
            </c:when>
          <c:otherwise>
                <div class="col-md-4">
                  <span class="fa-stack fa-4x">
<!--                    <i class="fas fa-circle fa-stack-2x text-primary"></i>
                    <i class="fas fa-lock fa-stack-1x fa-inverse"></i>-->
                    <img src="<c:url value="../imagenes/Curriculum.svg" />" style="width: 100px; height: 100px" >
                  </span>
                  <h4 class="service-heading"><a href="${pageContext.request.contextPath}/profesor/curriculum">completa tu perfil</a></h4>
                  <p class="text-muted">Describir brevemente las acciones dentro de la pagina</p>
                </div>
            </c:otherwise>
          </c:choose>
        </div>
      </div>
    </section>
<!--    <div class="android-be-together-section mdl-typography--text-center" style="margin-top: 100px ">
          <p>nombre: ${usuario.getNombre()}</p>
           <a href="${pageContext.request.contextPath}/profesor/mostrarhorario">gestiona tu perfil de trabajo</a>
           <br>
          <c:choose>
              <c:when test="${profesor.getEstaActivo()}">
                  <a href="${pageContext.request.contextPath}/profesor/actualizaprofesor">actualiza tu perfil</a> 
              </c:when>
                 
              <c:otherwise>
                  <a href="${pageContext.request.contextPath}/profesor/curriculum">completa tu perfil</a> 
                  
              </c:otherwise>
          </c:choose>
      </div>-->
<%@include file='footer.jsp'%>
</body>