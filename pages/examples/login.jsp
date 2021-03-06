<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html class="bg-black">
    <head>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="con" url="jdbc:mysql://localhost:3306/MoverViejitosdb?zeroDateTimeBehavior=convertToNull" user="root" password="81092" ></sql:setDataSource>
        <meta charset="UTF-8">
        <title>Ingresar</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../../css/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">Ingresar</div>
            <form action="" method="post">
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="text" name="userid" class="form-control" placeholder="Correo Electronico"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" placeholder="Contraseña"/>
                    </div>          
                    <div class="form-group">
                        <input type="checkbox" name="remember_me"/> Recuerdame
                    </div>
                </div>
                <div class="footer">                                                               
                    <button type="submit" class="btn bg-olive btn-block">Entrar</button>  
                    
                    <p><a href="#">Olvide mi contraseña</a></p>
     
<!-- Trigger the modal with a button -->
<a data-toggle="modal" data-target="#myModal">Registrarme</a>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="header">Escoge el tipo de usuario</h4>
      </div>
      <div class="modal-body">
         <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="centrar">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-aqua">
                                <div class="inner">
                                    <h4>
                                        Doctor  
                                    </h4>

                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="doctor_register.html" class="small-box-footer">
                                   <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div><!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                            <div class="small-box bg-yellow">
                                <div class="inner">
                                    <h4>
                                        Paciente
                                    </h4>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>
                                <a href="pacientregister.html" class="small-box-footer">
                                    <i class="fa fa-arrow-circle-right"></i>
                                </a>
                            </div>
                        </div>
                        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn bg-olive btn-block" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
                </div>
            </form>

        </div>
        <c:if test= "${pageContext.request.method=='POST'}">
        <c:if test="${empty param.userid or empty param.password}">
          <script>
               alert("No introdujo sus datos completos");
               window.location.href = 'login.jsp';
          </script>      
     </c:if>
     <c:if test="${not empty param.userid and not empty param.password}">

        <sql:query var="res" dataSource="${con}">
            SELECT correo,password
            FROM Doctor 
            WHERE correo='${param.userid}' 
            AND password='${param.password}';
        </sql:query>
                      
 <c:choose>	
	<c:when test="${res.rowCount > 0}">
           
		<c:set var="user" scope="session" value="${param.userid}" />
		<c:set var="rss" scope="session" 
                    value="${result.rows[0].RSS}" />
                <c:redirect url="adminHome.jsp"/>
	</c:when>	
	<c:otherwise>
        <sql:query var="res" dataSource="${con}">
            SELECT Mail,Pass
            FROM Paciente 
            WHERE Mail='${param.userid}' 
            AND Pass='${param.password}';
        </sql:query>
            <c:choose>	
	<c:when test="${res.rowCount > 0}">
           
		<c:set var="user" scope="session" value="${param.userid}" />
		<c:set var="rss" scope="session" 
                    value="${result.rows[0].RSS}" />
                <c:redirect url="hola.jsp"/>
	</c:when>
        </c:choose>

        	<c:otherwise>

                <script>
                    alert("Usuario o contraseña incorrectas");
                </script> 
                </c:otherwise>
        </c:otherwise>
</c:choose>

     </c:if>
     </c:if>
 <div class="margin text-center">
                <span>Buscanos en Redes Sociales</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div>

        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>        

    </body>
</html>