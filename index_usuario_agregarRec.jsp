<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
    <head>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="con" url="jdbc:mysql://localhost:3306/fragilidad?zeroDateTimeBehavior=convertToNull" user="root" password="81092" ></sql:setDataSource>
        <meta charset="UTF-8">
        <title> Agregar Receta </title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris chart -->
        <link href="css/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <link href="css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />
        <!-- Personal stylesheet -->
        <link href="css/usuario.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/calendar.js"></script>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="index_usuario.html" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                Medi-Rec
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar3.png" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li><!-- end message -->
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span>Francisco Omaña <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header bg-light-blue">
                                    <img src="img/avatar3.png" class="img-circle" alt="User Image" />
                                     <p>
                                        Francisco Omaña
                                        <small> 95 años. 2014 </small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Perfil</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Cerrar Sesión</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="img/avatar3.png" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>Hola!</p>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a href="index_usuario.html">
                                <i class="fa fa-dashboard"></i> <span>HOME</span>
                            </a>
                        </li>
                        <li>
                            <a href= "index_usuario_historial.html">
                                <i class="fa fa-archive"></i> <span>Historial</span>
                            </a>
                        </li>
                        <li>
                            <a href= "index_usuario_consultarDoc.html">
                                <i class="fa fa-user-md"></i> <span>Consultar Doctor</span>
                            </a>
                        </li>
                        <li>
                            <a href= "index_usuario_agregarRec.html">
                                <i class="fa fa-plus"></i> <span>Agregar Receta</span>
                            </a>
                        </li>
                        <li>
                           <a href="usuario_calendar.html">
                                <i class="fa fa-calendar"></i> <span>Calendario</span>

                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Francisco Omaña
                        <small>Control de Medicamentos</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Agregar Receta</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <!-- top row -->
                    <div class="row">
                        <div class="col-xs-12 connectedSortable">
                                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"> Nueva Receta  &nbsp; <i class="fa fa-plus"></i></button>
                                
                            <!--Modal-->
                            <div id="myModal" class="modal fade" role="dialog">
                                <div class="modal-dialog">}
                                    <!--Modal content-->
                                    <div class="modal-content">
                                                <div class="modal-header" id="receta">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <div class="header">Nueva Receta</div>
                                                </div>
                                                <div class="modal-body">
                                                <form action="" method="post">
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="text" name="patente" class="form-control" placeholder="Nombre del Medicamento"/>
                    </div> 
                    <div class="form-group">
                        <input type="text" name="activo" class="form-control" placeholder="Sustancia Activa"/>
                    </div> 
                    <div class="form-group">
                        <input type="text" name="Via" class="form-control" placeholder="Vía"/>
                    </div>
                    <div class="form-group">
    <label class="description"  style="color:#909090;" for="element_4">Fecha de Inicio </label>
    <span>
      <input id="element_4_1" name="element_4_1" class="element text" size="2" maxlength="2" value="" type="text"> /
      <label for="element_4_1" style="color:#909090;">DD</label>
    </span>
    <span>
      <input id="element_4_2" name="element_4_2" class="element text" size="2" maxlength="2" value="" type="text"> /
      <label for="element_4_2" style="color:#909090;">MM</label>
    </span>
    <span>
      <input id="element_4_3" name="element_4_3" class="element text" size="4" maxlength="4" value="" type="text">
      <label for="element_4_3" style="color:#909090;">YYYY</label>
    </span>
  
    <span id="calendar_4">
      <img id="cal_img_4" class="datepicker" src="img/calendar.gif" alt="Pick a date.">  
    </span>
   <script type="text/javascript">
      Calendar.setup({
      inputField   : "element_4_3",
      baseField    : "element_4",
      displayArea  : "calendar_4",
      button     : "cal_img_4",
      ifFormat   : "%B %e, %Y",
      onSelect   : selectEuropeDate
      });
    </script>
</div>  

<div class="form-group">
    <label class="description"  style="color:#909090;" for="element_4">Fecha de Fin </label>
    <span>
      <input id="element_4_1" name="element_4_4" class="element text" size="2" maxlength="2" value="" type="text"> /
      <label for="element_4_1" style="color:#909090;">DD</label>
    </span>
    <span>
      <input id="element_4_2" name="element_4_5" class="element text" size="2" maxlength="2" value="" type="text"> /
      <label for="element_4_2" style="color:#909090;">MM</label>
    </span>
    <span>
      <input id="element_4_3" name="element_4_6" class="element text" size="4" maxlength="4" value="" type="text">
      <label for="element_4_3" style="color:#909090;">YYYY</label>
    </span>
  
    <span id="calendar_4">
      <img id="cal_img_4" class="datepicker" src="img/calendar.gif" alt="Pick a date.">   
    </span>
    <script type="text/javascript">
      Calendar.setup({
      inputField   : "element_4_3",
      baseField    : "element_4",
      displayArea  : "calendar_4",
      button     : "cal_img_4",
      ifFormat   : "%B %e, %Y",
      onSelect   : selectEuropeDate
      });
    </script>
</div>  
                    <span>
                    <div class="form-group">
                        <input type="text" name="dosis" size="11" maxlength="7"  placeholder="# de Pastillas"/>
                    </div> 
                </span>
                <span>
                    <div class="form-group">
                        <input type="text" name="dosis1" size="11" maxlength="7"  placeholder="Horas"/>
                    </div> 
                    </span>
                    <div class="form-group">
                        <textarea cols="50" rows="4" name="efectos" class="form-control" placeholder="Posibles Efectos Adversos"/></textarea>

                    </div> 
                    <div class="form-group">
                        <textarea cols="50" rows="4" name="notes" class="form-control" placeholder="Notas"/></textarea>
                    </div>
                </div>
                                        </div><!--modal body-->
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary btn-block" value="next">Agregar otro Medicamento</button>
                                            
                <c:if test="${empty param.patente or empty param.activo or empty param.Via or empty param.element_4_1 or empty param.element_4_2 or empty param.element_4_3 or empty param.dosis or empty param.efectos or empty param.notes}">
                    <script>
                        alert("No introdujeron todos los datos");
                    </script>      
                </c:if>
                                            <button type="submit" class="btn btn-primary btn-block" value="send" >Enviar</button>
                <c:if test="${not empty param.patente and not empty param.activo and not empty param.Via and not empty param.element_4_1 and not empty param.element_4_2 and not empty param.element_4_3 and not empty param.dosis and not empty param.efectos and not empty param.notes}">
            <sql:update var="medi" dataSource="${con}">
                INSERT INTO Medicamento(Patente, Activos, Mg) VALUES (?,?,?)
                <sql:param value="${param.patente}"/>
                <sql:param value:"${param.activo}"/>
                <sql:param value: 0 />
            </sql:update>       
            <sql:update var="medi1" dataSource="${con}">
                INSERT INTO Receta(fecha_inicio, fecha_final, Via, Efectos_Adversos, Notas) VALUES (?,?,?,?,?)
                <sql:param value="${param.element_4_1}"/"${param.element_4_2}"/ "${param.element_4_3}"/>
                <sql:param value="${param.element_4_4}"/"${param.element_4_5}"/"${param.element_4_6}"/>
                <sql:param value="${param.Via}"/>
                <sql:param value="${param.efectos}"/>
                <sql:param value"${param.notes}"/>
            </sql:update>
            <sql:update var="med2" dataSource="${con}">
                INSERT INTO Dosis(num_pas, Tiempo) VALUES (?,?)
                    <sql:param value= "${param.dosis}"/>
                    <sql:param value="${param.dosis1}"/>
            </sql:update>
            <script> alert("Receta agregada");
            </script>
            </c:if>
                                                </div> <!--modal--footer-->
                                        </div> <!--modal content-->
                                           
                                    </div> <!--modal dialog-->
                        </div><!--Modal-->
                    </div><!-- /.col -->
                </section>
            
                
                
                <section class="col-lg-12 connectedSortable">
                    <div class="box box-primary">
                         <div class="box box-solid">
                                <div class="box-header">
                                    <h3 class="box-title">Recetas registradas</h3>
                                     <div class="box-tools">
                                        <div class="input-group">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Buscar"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-header -->
   
                                <div class="box-body">
                                    <div class="box-group" id="accordion">
                                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                                        <div class="panel box box-primary">
                                            <div class="box-header">
                                                <h4 class="box-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                                        <span class="label label-primary">20/11/1995 </span>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in">
                                                <div class="box-body">
                                                    <dl class="dl-horizontal">
                                                        <dt>Fecha de inicio:</dt>
                                                        <dd> 20/11/1995</dd>
                                                        <dt>Fecha final:</dt>
                                                        <dd> 30/03/1996</dd>
                                                        <dt>Doctor:</dt>
                                                        <dd>Ignacio Lora</dd>
                                                        <dt>Medicamento:</dt>
                                                        <dd>Fitoestimulina</dd>
                                                        <dt>Activo(s):</dt>
                                                        <dd>Triticum vulgare</dd>
                                                        <dt>Vía:</dt>
                                                        <dd>Aplicación directa</dd>
                                                        <dt>Efectos advesos:</dt>
                                                        <dd>Infección si no se limpia completamente</dd>
                                                        <dt>Notas:</dt>
                                                        <dd> </dd>
                                                    </dl>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="panel box box-danger">
                                            <div class="box-header">
                                                <h4 class="box-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                                        <span class="label label-danger">13/04/2000</span>
                                                    </a>
                                                </h4>
                                            </div>
                                            <c:if test= "${pageContext.request.method==''}">
                                            <div id="collapseTwo" class="panel-collapse collapse">
                                                <div class="box-body">
                                                   <dl class="dl-horizontal">
                                                        <dt>Fecha de inicio:</dt>
                                                        <dd> 13/04/2000</dd>
                                                        <dt>Fecha final:</dt>
                                                        <dd> 30/04/2000</dd>
                                                        <dt>Doctor:</dt>
                                                        <dd>Thalia Mane</dd>
                                                        <dt>Medicamento:</dt>
                                                        <dd>Hierro</dd>
                                                       <dt>Activo(s):</dt>
                                                        <dd>Hierro</dd>
                                                        <dt>Vía:</dt>
                                                        <dd>Inyección</dd>
                                                        <dt>Efectos advesos:</dt>
                                                        <dd>Hemosiderosis</dd>
                                                        <dt>Notas:</dt>
                                                        <dd>Se debe tener cuidado al aplicar la inyección para evitar manchas en la piel.</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel box box-success">
                                            <div class="box-header">
                                                <h4 class="box-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                                        <span class="label label-success">25/06/2001</span>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse">
                                                <div class="box-body">
                                                    <dl class="dl-horizontal">
                                                        <dt>Fecha de inicio:</dt>
                                                        <dd> 25/06/2001</dd>
                                                        <dt>Fecha final:</dt>
                                                        <dd> 30/08/2001</dd>
                                                        <dt>Doctor:</dt>
                                                        <dd>José Manzanares</dd>
                                                        <dt>Medicamento:</dt>
                                                        <dd>Excedrin</dd>
                                                        <dt>Activo(s):</dt>
                                                        <dd>Acetaminophea</dd>
                                                        <dt>Vía:</dt>
                                                        <dd>Pastilla tomada</dd>
                                                        <dt>Efectos advesos:</dt>
                                                        <dd>Adelgazamiento de la sangre</dd>
                                                        <dt>Notas:</dt>
                                                        <dd>No se debe tomar más de lo recetado par aevitar efectos adversos.</dd>
                                                    </dl>
                                                </div>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse">
                                                <div class="box-body">
                                                    <dl class="dl-horizontal">
                                                        <dt>Fecha de inicio:</dt>
                                                        <dd></dd>
                                                        <dt>Fecha final:</dt>
                                                        <dd></dd>
                                                        <dt>Doctor:</dt>
                                                        <dd></dd>
                                                        <dt>Medicamento:</dt>
                                                        <dd></dd>
                                                        <dt>Activo(s):</dt>
                                                        <dd></dd>
                                                        <dt>Vía:</dt>
                                                        <dd></dd>
                                                        <dt>Efectos adversos:</dt>
                                                        <dd></dd>
                                                        <dt>Notas:</dt>
                                                        <dd></dd>
                                                    </dl>
                                                </div>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-body -->
                            </div> <!--collapse-->
                    </div>
                </section>    
                       
            </aside><!-- /.right-side -->

        <!-- add new calendar event modal -->


        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- jQuery UI 1.10.3 -->
        <script src="js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Morris.js charts -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="js/plugins/morris/morris.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- jvectormap -->
        <script src="js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <!-- fullCalendar -->
        <script src="js/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <!-- jQuery Knob Chart -->
        <script src="js/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>

        <!-- AdminLTE App -->
        <script src="js/AdminLTE/app.js" type="text/javascript"></script>

        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="js/AdminLTE/dashboard.js" type="text/javascript"></script>

    </body>
</html>