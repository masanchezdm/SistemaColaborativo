<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page='headerProfesores.jsp'>
    <jsp:param name="title" value="horarios"/>
</jsp:include>
<style>
    option{
        color: black;
        text-align: center;
    }
    img {
        background-color: transparent;
        border: transparent;
        height: 15px;
        width: 15px;
    }
    button{
        background-color: transparent;
        border: transparent;
    }
    
</style>
<section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Haz tu horario</h2>
            <h3 class="section-subheading text-muted">Arma tu horario como a ti más te convenga</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <ul class="timeline">
              <li>
                  <div class="timeline-image" style="text-align: center ;background-image: url('../imagenes/pizarron3.jpeg');">
                      <div class="dropdown" style="margin-top: 20%; width: 100%; ">
                          <form action="${pageContext.request.contextPath}/profesor/guardardia" >
                               
                              <div class="col-md-12 col-xs-12 col-sm-12" style="margin-top:  18%; border: transparent"  >
                                  <div class="input-group" style="text-align: center ">
                                                      <select class="mdl-textfield__input" id="dia" name="dia" style="text-align: center; color: black; background-color: rgba(243, 241, 222, 0.5); ">
                                                           <option value="Lunes">Lunes</option> 
                                                           <option value="Martes">Martes</option> 
                                                           <option value="Miercoles">Miercoles</option> 
                                                           <option value="Jueves">Jueves</option> 
                                                           <option value="Viernes">Viernes</option> 
                                                           <option value="Sabado">Sabado</option> 
                                                           <option value="Domingo">Domingo</option>      
                                                    </select>
                                                  </div>
                                             
                                          </div>
                                        
                                      
                                          <!--<div class="col-md-12 col-xs-12 col-sm-12">-->
                                              <button id="button"><img src="<c:url value="../imagenes/add.svg" />" ></button>
                                          <!--</div>-->
                     
                        </form>
                      </div>
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                      <h4 style="text-align: center ">Dias</h4>
                  </div>
                  <div class="timeline-body">
                    <table class="table">
                        <tbody>
                            <c:forEach items="${dias}" var="dia">
                                <tr style="text-align: center ">
                                <td>${dia.getDia()}</td>
                            </tr>                      

                            </c:forEach>
                          
                        </tbody>
                      </table>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                <div class="timeline-image" style="background-image: url('../imagenes/pizarron2.jpg');">
                    <form action="${pageContext.request.contextPath}/profesor/guardarhorario" >
                        <div class="row" style="margin-top: 18%; width: 90%; margin-left: 5%">
                            <div class="col-md-12 col-xs-12 col-sm-12">
                                    <div class="input-group">
                                      <select class="mdl-textfield__input" id="dia" name="diase" style="color: black; background-color: rgba(243, 241, 222, 0.5);" >
                                          <c:forEach items="${dias}" var="dia">

                                             <option value="${dia.getIddia()}">${dia.getDia()}</option> 
                                          </c:forEach>
                                      </select>
                                    </div>

                            </div>
                            <div class="col-md-12 col-xs-12 col-sm-12" style="text-align: center ">
                                <div class="form-group">
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="glyphicon glyphicon-time"></i>
                                        </div>
                                        <input type="time"  class="form-control" name="hora" id="inicio" required>
                                    </div>
                                </div>
                               <button id="button"><img src="<c:url value="../imagenes/add.svg" />" ></button>
                            </div>                                          


<!--                                          <div class="col-md-12 col-xs-12 col-sm-12">
                                <button id="button"  class="btn btn-primary btn-lg btn-block login-button">Agrega Horario</button>
                            </div>-->
                              

                       </div>
                                                          
                                             
                        </form>
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                      <h4 style="text-align: center ">Horario</h4>
                  </div>
                  <div class="timeline-body">
                    <table class="table">
                        <tbody>
                            <c:forEach items="${horarios}" var="horario">
                                <tr style="text-align: center ">
                                <td>${horario.getHora().toString()}</td>
                            </tr>                      

                            </c:forEach>
                          
                        </tbody>
                      </table>
                  </div>
                </div>
              </li>
              
              <!--AQUI EMPIEZA MATERIAS--> 
              <li>
                <div class="timeline-image"  style="background-image: url('../imagenes/pizarron1.jpg');">
                  <form action="${pageContext.request.contextPath}/profesor/guardartema" >
                            <div class="row"  style="margin-top: 25%; width: 90%; margin-left: 5%">                                   
                                <div class="col-md-12 col-xs-12 col-sm-12">
                                        <div class="input-group">
                                            <select class="mdl-textfield__input" id="tema" name="temaseleccionado"  style="color: black; background-color: rgba(243, 241, 222, 0.5);">
                                                <c:forEach items="${todostemas}" var="todotema">
                                                    <option value="${todotema.getIdtema()}">${todotema.getTema()}</option>        
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <button id="button"><img src="<c:url value="../imagenes/add.svg" />" ></button>
                                </div>
                           </div>
                                                          
                                             
                        </form>
                </div>
                <div class="timeline-panel">
                  <div class="timeline-heading">
                      <h4 style="text-align: center ">Materias</h4>
                  </div>
                  <div class="timeline-body">
                      <table class="table">
                        <tbody>
                            <c:forEach items="${temas}" var="tema">
                                 <tr>
                                     <td>${tema.getTema()}</td>
                                 </tr>                      

                           </c:forEach>
                                 
                        </tbody>
                      </table>
                  </div>
                </div>
              </li>
              <li class="timeline-inverted">
                  <div class="timeline-image" style="background-image: url('../imagenes/paredes-de-pizarra.jpg');" >
                 <form action="${pageContext.request.contextPath}/profesor/guardarnivel" >
                                      <div class="row" style="margin-top: 25%; width: 90%; margin-left: 5%">                                   
                                          <div class="col-md-12 col-xs-12 col-sm-12">
                                                  <div class="input-group">
                                                          <select class="mdl-textfield__input" id="tema" name="nivelseleccionado"  style="color: black; background-color: rgba(243, 241, 222, 0.5);">
                                                              <c:forEach items="${todosniveles}" var="todosnivel">
                                                                  <option value="${todosnivel.getIdnivel()}">${todosnivel.getNivel()}</option>        
                                                              </c:forEach>
                                                          </select>
                                                  </div>
                                              <button id="button"><img src="<c:url value="../imagenes/add.svg" />" ></button>
                                          </div>
                                          
                                     </div>
                                                          
                                             
                        </form>
                </div>
                            
                            <!--AQUI EMPIEZA NIVEL--> 
                <div class="timeline-panel">
                  <div class="timeline-heading">
                    <h4>Nivel</h4>
                  </div>
                  <div class="timeline-body">
                       <table class="table">
                        <tbody>
                            <c:forEach items="${niveles}" var="nivel">
                               <tr>
                                   <td>${nivel.getNivel()}</td>
                               </tr>                      

                         </c:forEach>
                              
                        </tbody>
                      </table>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
<!--      <div class="android-be-together-section mdl-typography--text-center">
 
                        
         <h3>Materias</h3>
          <div style="text-align:center;">
              <table class="table" style="width:50%" >
                  <tr>
                      <td>Materias</td>
                      <td style="width: 10%"></td>
                      <td rowspan="${temas.size()}" style="width: 40%">
                          <div>
                          
                        <form action="${pageContext.request.contextPath}/profesor/guardartema" >
                                      <div class="row">                                   
                                          <div class="col-md-12 col-xs-12 col-sm-12">
                                              <label for="tema">Materia</label>
                                                  <div class="input-group">
                                                      <div class="input-group-addon">
                                                          <i class="glyphicon glyphicon-list-alt"></i>
                                                      </div>
                                                          <select class="mdl-textfield__input" id="tema" name="temaseleccionado">
                                                              <c:forEach items="${todostemas}" var="todotema">
                                                                  <option value="${todotema.getIdtema()}">${todotema.getTema()}</option>        
                                                              </c:forEach>
                                                          </select>
                                                  </div>
                                             
                                          </div>
                                        
                                      
                                          <div class="col-md-12 col-xs-12 col-sm-12">
                                              <button id="button"  class="btn btn-primary btn-lg btn-block login-button">Agrega Nivel</button>
                                          </div>
                                          
                                     </div>
                                                          
                                             
                        </form>
                          </div>
                      </td>
                 
                  
                  </tr>
                  <c:forEach items="${temas}" var="tema">
                  <tr>
                      <td>${tema.getTema()}</td>
                  </tr>                      
                      
                  </c:forEach>
                  
              </table>
          </div>                                       
                        <%--------------------NIVELES-----------------------%>
                        
                        
                        
         <h3>Niveles</h3>
          <div style="text-align:center;">
              <table class="table" style="width:50%" >
                  <tr>
                      <td>Materias</td>
                      <td style="width: 10%"></td>
                      <td rowspan="${temas.size()}" style="width: 40%">
                          <div>
                          
                        <form action="${pageContext.request.contextPath}/profesor/guardarnivel" >
                                      <div class="row">                                   
                                          <div class="col-md-12 col-xs-12 col-sm-12">
                                              <label for="tema">Nivel</label>
                                                  <div class="input-group">
                                                      <div class="input-group-addon">
                                                          <i class="glyphicon glyphicon-list-alt"></i>
                                                      </div>
                                                          <select class="mdl-textfield__input" id="tema" name="nivelseleccionado">
                                                              <c:forEach items="${todosniveles}" var="todosnivel">
                                                                  <option value="${todosnivel.getIdnivel()}">${todosnivel.getNivel()}</option>        
                                                              </c:forEach>
                                                          </select>
                                                  </div>
                                             
                                          </div>
                                        
                                      
                                          <div class="col-md-12 col-xs-12 col-sm-12">
                                              <button id="button"  class="btn btn-primary btn-lg btn-block login-button">Agrega Nivel</button>
                                          </div>
                                          
                                     </div>
                                                          
                                             
                        </form>
                          </div>
                      </td>
                 
                  
                  </tr>
                  <c:forEach items="${niveles}" var="nivel">
                  <tr>
                      <td>${nivel.getNivel()}</td>
                  </tr>                      
                      
                  </c:forEach>
                  
              </table>
          </div>                                        
                                     
                                      

      
      
      
      
      </div>-->
<%@include file='footer.jsp'%>