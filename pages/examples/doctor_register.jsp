<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html class="bg-black">
    <head>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="con" url="jdbc:mysql://localhost:3306/fragilidad?zeroDateTimeBehavior=convertToNull" user="root" password="81092" ></sql:setDataSource>
        <meta charset="UTF-8">
        <title>Doctor | Registro</title>
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
            <div class="header">Registro Nuevo Doctor</div>
            <form action="" method="post">
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="text" name="nombre" class="form-control" placeholder="Nombre"/>
                    </div>
                    <div class="form-group">
                        <input type="text" name="apellidos" class="form-control" placeholder="Apellido"/>
                    </div>
                    <div class="form-group">
                        <input type="text" name="Cedula" class="form-control" placeholder="Cédula"/>
                    </div>
                    <div class="form-group">
                        <input type="text" name="especialidad" class="form-control" placeholder="Especialidad"/>
                    </div> 
                    <div class="form-group">
                        <input type="text" name="telefono" class="form-control" placeholder="Teléfono"/>
                    </div> 
                    <div class="form-group">
                        <input type="text" name="correo" class="form-control" placeholder="Correo Electrónico"/>
                    </div> 
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" placeholder="Contraseña"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password2" class="form-control" placeholder="Reescribe tu contraseña"/>
                    </div>
                </div>
                <div class="footer">                    

                    <button type="submit" class="btn bg-olive btn-block">Registrar</button>

                    <a href="login.html" class="text-center">Ya tengo cuenta</a>
                </div>
            </form>
            
            <c:if test= "${pageContext.request.method=='POST'}">
        <c:choose>
    <c:when test="${param.password==param.password2}">
        
        <sql:update var="res" dataSource="${con}">
            INSERT INTO Doctor(nombre,apellidos,password,Cedula,correo,telefono,especialidad) VALUES (?,?,?,?,?,?,?)
            <sql:param value="${param.nombre}" />
            <sql:param value="${param.apellidos}" />
            <sql:param value="${param.password}" />
            <sql:param value="${param.cedula}" />
            <sql:param value="${param.correo}" />
            <sql:param value="${param.telefono}" />
            <sql:param value="${param.especialidad}" />
        </sql:update>. 
        <script>
                alert("Doctor agregado con exito");
        </script> 
    </c:when>    
    <c:otherwise>
<script>
    alert("Datos incopletos o incorrectos");
</script> 
    </c:otherwise>
</c:choose>
</c:if>
            <div class="margin text-center">
                <span>Registrate con:</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div>
        </div>


        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../../js/bootstrap.min.js" type="text/javascript"></script>

    </body>
</html>
