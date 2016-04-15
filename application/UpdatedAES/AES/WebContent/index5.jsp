<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>CENCAS Dashboard</title>

    <link href="bootstrap/bootstrap.min.css" rel="stylesheet">

    <link href="bootstrap/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <link href="bootstrap/dashboard.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index5.jsp" style="color: #FF0;">Central Canvassing System</a>
          <ul class="nav navbar-nav navbar-right">
          	<li><a href="login.jsp" style="margin-left: 3.7em; color: #FF0; border-left: 1px solid #FFF;">LOGIN</a></li>
          </ul>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
          	<li><a href="presidents.jsp">President</a></li>
          	<li><a href="vpresidents.jsp">Vice President</a></li>
          	<!-- <li><a href="senators.jsp">Senators</a></li>
          	<li><a href="partylists.jsp">Party Lists</a></li> -->
          	<li><a href="governors.jsp">Governors</a></li>
          	<li><a href="vgovernors.jsp">Vice Governors</a></li>
            <li><a href="mayors.jsp">Mayors</a></li>
            <li><a href="vmayors.jsp">Vice Mayors</a></li>
          </ul>
          <form class="navbar-form navbar-right pull-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active" data-toggle="collapse" data-target="#regions"><a href="#">SELECT REGION<span class="sr-only">(current)</span></a></li>
            	<div id="regions" class="collapse" style="padding-left: 3em; margin-top: 5px;">
            		<ul class="nav nav-sidebar">
	            		<li data-toggle="collapse" data-target="#carprovince"><a href="#" onclick="region_car()">CAR REGION<span class="sr-only">(current)</span></a></li>
	            			<div id="carprovince" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            					<ul class="nav nav-sidebar">
			            				<li data-toggle="collapse" data-target="#apayao"><a href="#" onclick="region_car_apayao()">APAYAO PROVINCE<span class="sr-only">(current)</span></a></li>
	            							<div id="apayao" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            								<ul class="nav nav-sidebar">
	            									<li data-toggle="collapse" data-target="#apayao1st"><a href="#" onclick="region_car_apayao_first()">FIRST DISTRICT<span class="sr-only">(current)</span></a></li>
	            										<div id="apayao1st" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            											<ul class="nav nav-sidebar">
	            												<li data-toggle="collapse" data-target="#pudtol"><a href="#" onclick="region_car_apayao_first_pudtol()">PUDTOL CITY<span class="sr-only">(current)</span></a></li>
	            													<div id="pudtol" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            														<ul class="nav nav-sidebar">
	            															<li><a href="#" onclick="region_car_apayao_first_pudtol_0001A()">PRECINCT 0001A</a></li>
	            															<li><a href="#" onclick="region_car_apayao_first_pudtol_0002A()">PRECINCT 0002A</a></li>
	            															<li><a href="#" onclick="region_car_apayao_first_pudtol_0003A()">PRECINCT 0003A</a></li>
	            															<li><a href="#" onclick="region_car_apayao_first_pudtol_0003B()">PRECINCT 0003B</a></li>
	            														</ul>
	            													</div>
	            												<li data-toggle="collapse" data-target="#marcela"><a href="#" onclick="region_car_apayao_first_marcela()">SANTA MARCELA CITY<span class="sr-only">(current)</span></a></li>
	            													<div id="marcela" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            														<ul class="nav nav-sidebar">
	            															<li><a href="#" onclick="region_car_apayao_first_marcela_0025A()">PRECINCT 0025A</a></li>
	            															<li><a href="#" onclick="region_car_apayao_first_marcela_0025B()">PRECINCT 0025B</a></li>
	            															<li><a href="#" onclick="region_car_apayao_first_marcela_0026A()">PRECINCT 0026A</a></li>
	            															<li><a href="#" onclick="region_car_apayao_first_marcela_0026B()">PRECINCT 0026B</a></li>
	            														</ul>
	            													</div>
	            											</ul>
	            										</div>
	            								</ul>
	            							</div>
	            							
	            						<li data-toggle="collapse" data-target="#ifugao"><a href="#" onclick="region_car_ifugao()">IFUGAO PROVINCE<span class="sr-only">(current)</span></a></li>
		            						<div id="ifugao" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            								<ul class="nav nav-sidebar">
		            									<li data-toggle="collapse" data-target="#ifugao1st"><a href="#" onclick="region_car_ifugao_first()">FIRST DISTRICT<span class="sr-only">(current)</span></a></li>
		            										<div id="ifugao1st" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            											<ul class="nav nav-sidebar">
		            												<li data-toggle="collapse" data-target="#hungduan"><a href="#" onclick="region_car_ifugao_first_hungduan()">HUNGDUAN CITY<span class="sr-only">(current)</span></a></li>
		            													<div id="hungduan" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            														<ul class="nav nav-sidebar">
		            															<li><a href="#" onclick="region_car_ifugao_first_hungduan_0026A()">PRECINCT 0026A</a></li>
		            															<li><a href="#" onclick="region_car_ifugao_first_hungduan_0027A()">PRECINCT 0027A</a></li>
		            															<li><a href="#" onclick="region_car_ifugao_first_hungduan_0028A()">PRECINCT 0028A</a></li>
		            														</ul>
		            													</div>
		            												<li data-toggle="collapse" data-target="#asipulo"><a href="#" onclick="region_car_ifugao_first_asipulo()">ASIPULO CITY<span class="sr-only">(current)</span></a></li>
		            													<div id="asipulo" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            														<ul class="nav nav-sidebar">
		            															<li><a href="#" onclick="region_car_ifugao_first_asipulo_0019A()">PRECINCT 0019A</a></li>
		            															<li><a href="#" onclick="region_car_ifugao_first_asipulo_0019B()">PRECINCT 0019B</a></li>
		            															<li><a href="#" onclick="region_car_ifugao_first_asipulo_0020A()">PRECINCT 0020A</a></li>
		            														</ul>
		            													</div>
		            											</ul>
		            										</div>
		            								</ul>
		            							</div>
	            					</ul>
	            			</div>
	            		<li data-toggle="collapse" data-target="#reg2province"><a href="#" onclick="region_2()">REGION II<span class="sr-only">(current)</span></a></li>
	            			<div id="reg2province" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            					<ul class="nav nav-sidebar">
			            				<li data-toggle="collapse" data-target="#isabela"><a href="#" onclick="region_2_isabela()">ISABELA PROVINCE<span class="sr-only">(current)</span></a></li>
	            							<div id="isabela" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            								<ul class="nav nav-sidebar">
	            									<li data-toggle="collapse" data-target="#isabela1st"><a href="#" onclick="region_2_isabela_first()">FIRST DISTRICT<span class="sr-only">(current)</span></a></li>
	            										<div id="isabela1st" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            											<ul class="nav nav-sidebar">
	            												<li data-toggle="collapse" data-target="#divilacan"><a href="#" onclick="region_2_isabela_first_divilacan()">DIVILACAN CITY<span class="sr-only">(current)</span></a></li>
	            													<div id="divilacan" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            														<ul class="nav nav-sidebar">
	            															<li><a href="#" onclick="region_2_isabela_first_divilacan_0005A()">PRECINCT 0005A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_first_divilacan_0006A()">PRECINCT 0006A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_first_divilacan_0007A()">PRECINCT 0007A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_first_divilacan_0008A()">PRECINCT 0008A</a></li>
	            														</ul>
	            													</div>
	            												<li data-toggle="collapse" data-target="#cabagan"><a href="#" onclick="region_2_isabela_first_cabagan()">CABAGAN CITY<span class="sr-only">(current)</span></a></li>
	            													<div id="cabagan" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            														<ul class="nav nav-sidebar">
	            															<li><a href="#" onclick="region_2_isabela_first_cabagan_0009A()">PRECINCT 0009A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_first_cabagan_0010A()">PRECINCT 0010A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_first_cabagan_0011A()">PRECINCT 0011A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_first_cabagan_0012A()">PRECINCT 0012A</a></li>
	            														</ul>
	            													</div>
	            											</ul>
	            										</div>
	            										<li data-toggle="collapse" data-target="#isabela4th"><a href="#" onclick="region_2_isabela_fourth()">FOURTH DISTRICT<span class="sr-only">(current)</span></a></li>
	            										<div id="isabela4th" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            											<ul class="nav nav-sidebar">
	            												<li data-toggle="collapse" data-target="#dinapigue"><a href="#" onclick="region_2_isabela_fourth_dinapigue()">DINAPIGUE CITY<span class="sr-only">(current)</span></a></li>
	            													<div id="dinapigue" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            														<ul class="nav nav-sidebar">
	            															<li><a href="#" onclick="region_2_isabela_fourth_dinapigue_0021A()">PRECINCT 0021A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_fourth_dinapigue_0022A()">PRECINCT 0022A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_fourth_dinapigue_0023A()">PRECINCT 0023A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_fourth_dinapigue_0024A()">PRECINCT 0024A</a></li>
	            														</ul>
	            													</div>
	            												<li data-toggle="collapse" data-target="#gamu"><a href="#" onclick="region_2_isabela_fourth_gamu()">GAMU CITY<span class="sr-only">(current)</span></a></li>
	            													<div id="gamu" class="collapse" style="padding-left: 3em; margin-top: 5px;">
	            														<ul class="nav nav-sidebar">
	            															<li><a href="#" onclick="region_2_isabela_fourth_gamu_0025A()">PRECINCT 0025A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_fourth_gamu_0026A()">PRECINCT 0026A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_fourth_gamu_0027A()">PRECINCT 0027A</a></li>
	            															<li><a href="#" onclick="region_2_isabela_fourth_gamu_0028A()">PRECINCT 0028A</a></li>
	            														</ul>
	            													</div>
	            											</ul>
	            										</div>
	            								</ul>
	            							</div>
	            							
	            						<li data-toggle="collapse" data-target="#cagayan"><a href="#" onclick="region_2_cagayan()">CAGAYAN PROVINCE<span class="sr-only">(current)</span></a></li>
		            						<div id="cagayan" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            								<ul class="nav nav-sidebar">
		            									<li data-toggle="collapse" data-target="#cagayan1st"><a href="#" onclick="region_2_cagayan_first()">FIRST DISTRICT<span class="sr-only">(current)</span></a></li>
		            										<div id="cagayan1st" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            											<ul class="nav nav-sidebar">
		            												<li data-toggle="collapse" data-target="#teresita"><a href="#" onclick="region_2_cagayan_first_teresita()">SANTA TERESITA CITY<span class="sr-only">(current)</span></a></li>
		            													<div id="teresita" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            														<ul class="nav nav-sidebar">
		            															<li><a href="#" onclick="region_2_cagayan_first_teresita_0005B()">PRECINCT 0005B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_first_teresita_0006B()">PRECINCT 0006B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_first_teresita_0007B()">PRECINCT 0007B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_first_teresita_0008B()">PRECINCT 0008B</a></li>
		            														</ul>
		            													</div>
		            												<li data-toggle="collapse" data-target="#gattaran"><a href="#" onclick="region_2_cagayan_first_gattaran()">GATTARAN CITY<span class="sr-only">(current)</span></a></li>
		            													<div id="gattaran" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            														<ul class="nav nav-sidebar">
		            															<li><a href="#" onclick="region_2_cagayan_first_gattaran_0010B()">PRECINCT 0010B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_first_gattaran_0011B()">PRECINCT 0011B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_first_gattaran_0012B()">PRECINCT 0012B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_first_gattaran_0013B()">PRECINCT 0013B</a></li>
		            														</ul>
		            													</div>
		            											</ul>
		            										</div>
		            										<li data-toggle="collapse" data-target="#cagayan2nd"><a href="#" onclick="region_2_cagayan_second()">SECOND DISTRICT<span class="sr-only">(current)</span></a></li>
		            										<div id="cagayan2nd" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            											<ul class="nav nav-sidebar">
		            												<li data-toggle="collapse" data-target="#calayan"><a href="#" onclick="region_2_cagayan_second_calayan()">CALAYAN CITY<span class="sr-only">(current)</span></a></li>
		            													<div id="calayan" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            														<ul class="nav nav-sidebar">
		            															<li><a href="#" onclick="region_2_cagayan_second_calayan_0024B()">PRECINCT 0024B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_second_calayan_0025B()">PRECINCT 0025B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_second_calayan_0026B()">PRECINCT 0026B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_second_calayan_0027B()">PRECINCT 0027B</a></li>
		            														</ul>
		            													</div>
		            												<li data-toggle="collapse" data-target="#iguig"><a href="#" onclick="region_2_cagayan_second_iguig()">IGUIG CITY<span class="sr-only">(current)</span></a></li>
		            													<div id="iguig" class="collapse" style="padding-left: 3em; margin-top: 5px;">
		            														<ul class="nav nav-sidebar">
		            															<li><a href="#" onclick="region_2_cagayan_second_iguig_0030B()">PRECINCT 0030B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_second_iguig_0031B()">PRECINCT 0031B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_second_iguig_0032B()">PRECINCT 0032B</a></li>
		            															<li><a href="#" onclick="region_2_cagayan_second_iguig_0033B()">PRECINCT 0033B</a></li>
		            														</ul>
		            													</div>
		            											</ul>
		            										</div>
		            								</ul>
		            							</div>
	            					</ul>
	            			</div>
            		</ul>
            	</div>            
          </ul>
          
          
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Top Candidates</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Candidate placeholder thumbnail">
              <h4>Presidential</h4>
              <span class="text-muted">Votes</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Candidate placeholder thumbnail">
              <h4>Vice Presidential</h4>
              <span class="text-muted">Votes</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Candidate placeholder thumbnail">
              <h4>Senatorial</h4>
              <span class="text-muted">Votes</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="" width="200" height="200" class="img-responsive" alt="Candidate placeholder thumbnail">
              <h4>Party List</h4>
              <span class="text-muted">Votes</span>
            </div>
          </div>

          <h2 class="sub-header" id="label"></h2>
          <div class="table-responsive" id="area">
          </div>
        </div>
      </div>
    </div>

    <script src="jquery/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="bootstrap/jquery.min.js"><\/script>')</script>
    <script src="bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="jquery/jquery-latest.js"></script> 
	<script type="text/javascript" src="jquery/jquery.tablesorter.js"></script> 
    <script src="bootstrap/ie10-viewport-bug-workaround.js"></script>
    <script>
	function region_car(){$("#area").load("region_car.jsp #regcar");$("#label").load("region_car.jsp #title");}
	function region_car_apayao(){$("#area").load("region_car_apayao.jsp #regcar");$("#label").load("region_car_apayao.jsp #title");}
	function region_car_apayao_first(){$("#area").load("region_car_apayao_first.jsp #regcar");$("#label").load("region_car_apayao_first.jsp #title");}
	function region_car_apayao_first_pudtol(){$("#area").load("region_car_apayao_first_pudtol.jsp #regcar");$("#label").load("region_car_apayao_first_pudtol.jsp #title");}
	function region_car_apayao_first_pudtol_0001A(){$("#area").load("region_car_apayao_first_pudtol_0001A.jsp #regcar");$("#label").load("region_car_apayao_first_pudtol_0001A.jsp #title");}
	function region_car_apayao_first_pudtol_0002A(){$("#area").load("region_car_apayao_first_pudtol_0002A.jsp #regcar");$("#label").load("region_car_apayao_first_pudtol_0002A.jsp #title");}
	function region_car_apayao_first_pudtol_0003A(){$("#area").load("region_car_apayao_first_pudtol_0003A.jsp #regcar");$("#label").load("region_car_apayao_first_pudtol_0003A.jsp #title");}
	function region_car_apayao_first_pudtol_0003B(){$("#area").load("region_car_apayao_first_pudtol_0003B.jsp #regcar");$("#label").load("region_car_apayao_first_pudtol_0003B.jsp #title");}
	
	function region_car_apayao_first_marcela(){$("#area").load("region_car_apayao_first_marcela.jsp #regcar");$("#label").load("region_car_apayao_first_marcela.jsp #title");}
	function region_car_apayao_first_marcela_0025A(){$("#area").load("region_car_apayao_first_marcela_0025A.jsp #regcar");$("#label").load("region_car_apayao_first_marcela_0025A.jsp #title");}
	function region_car_apayao_first_marcela_0025B(){$("#area").load("region_car_apayao_first_marcela_0025B.jsp #regcar");$("#label").load("region_car_apayao_first_marcela_0025B.jsp #title");}
	function region_car_apayao_first_marcela_0026A(){$("#area").load("region_car_apayao_first_marcela_0026A.jsp #regcar");$("#label").load("region_car_apayao_first_marcela_0026A.jsp #title");}
	function region_car_apayao_first_marcela_0026B(){$("#area").load("region_car_apayao_first_marcela_0026B.jsp #regcar");$("#label").load("region_car_apayao_first_marcela_0026B.jsp #title");}
	
	function region_car_ifugao(){$("#area").load("region_car_ifugao.jsp #regcar");$("#label").load("region_car_ifugao.jsp #title");}
	function region_car_ifugao_first(){$("#area").load("region_car_ifugao_first.jsp #regcar");$("#label").load("region_car_ifugao_first.jsp #title");}
	function region_car_ifugao_first_hungduan(){$("#area").load("region_car_ifugao_first_hungduan.jsp #regcar");$("#label").load("region_car_ifugao_first_hungduan.jsp #title");}
	function region_car_ifugao_first_hungduan_0026A(){$("#area").load("region_car_ifugao_first_hungduan_0026A.jsp #regcar");$("#label").load("region_car_ifugao_first_hungduan_0026A.jsp #title");}
	function region_car_ifugao_first_hungduan_0027A(){$("#area").load("region_car_ifugao_first_hungduan_0027A.jsp #regcar");$("#label").load("region_car_ifugao_first_hungduan_0027A.jsp #title");}
	function region_car_ifugao_first_hungduan_0028A(){$("#area").load("region_car_ifugao_first_hungduan_0028A.jsp #regcar");$("#label").load("region_car_ifugao_first_hungduan_0026A.jsp #title");}
	
	function region_car_ifugao_first_asipulo(){$("#area").load("region_car_ifugao_first_asipulo.jsp #regcar");$("#label").load("region_car_ifugao_first_asipulo.jsp #title");}
	function region_car_ifugao_first_asipulo_0019A(){$("#area").load("region_car_ifugao_first_asipulo_0019A.jsp #regcar");$("#label").load("region_car_ifugao_first_asipulo_0019A.jsp #title");}
	function region_car_ifugao_first_asipulo_0019B(){$("#area").load("region_car_ifugao_first_asipulo_0019B.jsp #regcar");$("#label").load("region_car_ifugao_first_asipulo_0019B.jsp #title");}
	function region_car_ifugao_first_asipulo_0020A(){$("#area").load("region_car_ifugao_first_asipulo_0020A.jsp #regcar");$("#label").load("region_car_ifugao_first_asipulo_0020A.jsp #title");}
	
	function region_2(){$("#area").load("region_2.jsp #reg2");$("#label").load("region_2.jsp #title");}
	function region_2_isabela(){$("#area").load("region_2_isabela.jsp #reg2");$("#label").load("region_2_isabela.jsp #title");}
	function region_2_isabela_first(){$("#area").load("region_2_isabela_first.jsp #reg2");$("#label").load("region_2_isabela_first.jsp #title");}
	function region_2_isabela_first_divilacan(){$("#area").load("region_2_isabela_first_divilacan.jsp #reg2");$("#label").load("region_2_isabela_first_divilacan.jsp #title");}
	function region_2_isabela_first_divilacan_0005A(){$("#area").load("region_2_isabela_first_divilacan_0005A.jsp #reg2");$("#label").load("region_2_isabela_first_divilacan_0005A.jsp #title");}
	function region_2_isabela_first_divilacan_0006A(){$("#area").load("region_2_isabela_first_divilacan_0006A.jsp #reg2");$("#label").load("region_2_isabela_first_divilacan_0006A.jsp #title");}
	function region_2_isabela_first_divilacan_0007A(){$("#area").load("region_2_isabela_first_divilacan_0007A.jsp #reg2");$("#label").load("region_2_isabela_first_divilacan_0007A.jsp #title");}
	function region_2_isabela_first_divilacan_0008A(){$("#area").load("region_2_isabela_first_divilacan_0008A.jsp #reg2");$("#label").load("region_2_isabela_first_divilacan_0008A.jsp #title");}
	
	function region_2_isabela_first_cabagan(){$("#area").load("region_2_isabela_first_cabagan.jsp #reg2");$("#label").load("region_2_isabela_first_cabagan.jsp #title");}
	function region_2_isabela_first_cabagan_0009A(){$("#area").load("region_2_isabela_first_cabagan_0009A.jsp #reg2");$("#label").load("region_2_isabela_first_cabagan_0009A.jsp #title");}
	function region_2_isabela_first_cabagan_0010A(){$("#area").load("region_2_isabela_first_cabagan_0010A.jsp #reg2");$("#label").load("region_2_isabela_first_cabagan_0010A.jsp #title");}
	function region_2_isabela_first_cabagan_0011A(){$("#area").load("region_2_isabela_first_cabagan_0011A.jsp #reg2");$("#label").load("region_2_isabela_first_cabagan_0011A.jsp #title");}
	function region_2_isabela_first_cabagan_0012A(){$("#area").load("region_2_isabela_first_cabagan_0012A.jsp #reg2");$("#label").load("region_2_isabela_first_cabagan_0012A.jsp #title");}
	
	function region_2_isabela_fourth(){$("#area").load("region_2_isabela_fourth.jsp #reg2");$("#label").load("region_2_isabela_fourth.jsp #title");}
	function region_2_isabela_fourth_gamu(){$("#area").load("region_2_isabela_fourth_gamu.jsp #reg2");$("#label").load("region_2_isabela_fourth_gamu.jsp #title");}
	function region_2_isabela_fourth_gamu_0025A(){$("#area").load("region_2_isabela_fourth_gamu_0025A.jsp #reg2");$("#label").load("region_2_isabela_fourth_gamu_0025A.jsp #title");}
	function region_2_isabela_fourth_gamu_0026A(){$("#area").load("region_2_isabela_fourth_gamu_0026A.jsp #reg2");$("#label").load("region_2_isabela_fourth_gamu_0026A.jsp #title");}
	function region_2_isabela_fourth_gamu_0027A(){$("#area").load("region_2_isabela_fourth_gamu_0027A.jsp #reg2");$("#label").load("region_2_isabela_fourth_gamu_0027A.jsp #title");}
	function region_2_isabela_fourth_gamu_0028A(){$("#area").load("region_2_isabela_fourth_gamu_0028A.jsp #reg2");$("#label").load("region_2_isabela_fourth_gamu_0028A.jsp #title");}
	
	function region_2_isabela_fourth_dinapigue(){$("#area").load("region_2_isabela_fourth_dinapigue.jsp #reg2");$("#label").load("region_2_isabela_fourth_dinapigue.jsp #title");}
	function region_2_isabela_fourth_dinapigue_0021A(){$("#area").load("region_2_isabela_fourth_dinapigue_0021A.jsp #reg2");$("#label").load("region_2_isabela_fourth_dinapigue_0021A.jsp #title");}
	function region_2_isabela_fourth_dinapigue_0022A(){$("#area").load("region_2_isabela_fourth_dinapigue_0022A.jsp #reg2");$("#label").load("region_2_isabela_fourth_dinapigue_0022A.jsp #title");}
	function region_2_isabela_fourth_dinapigue_0023A(){$("#area").load("region_2_isabela_fourth_dinapigue_0023A.jsp #reg2");$("#label").load("region_2_isabela_fourth_dinapigue_0023A.jsp #title");}
	function region_2_isabela_fourth_dinapigue_0024A(){$("#area").load("region_2_isabela_fourth_dinapigue_0024A.jsp #reg2");$("#label").load("region_2_isabela_fourth_dinapigue_0024A.jsp #title");}
	
	function region_2_cagayan(){$("#area").load("region_2_cagayan.jsp #reg2");$("#label").load("region_2_cagayan.jsp #title");}
	function region_2_cagayan_second(){$("#area").load("region_2_cagayan_second.jsp #reg2");$("#label").load("region_2_cagayan_second.jsp #title");}
	function region_2_cagayan_second_calayan(){$("#area").load("region_2_cagayan_second_calayan.jsp #reg2");$("#label").load("region_2_cagayan_second_calayan.jsp #title");}
	function region_2_cagayan_second_calayan_0024B(){$("#area").load("region_2_cagayan_second_calayan_0024B.jsp #reg2");$("#label").load("region_2_cagayan_second_calayan_0024B.jsp #title");}
	function region_2_cagayan_second_calayan_0025B(){$("#area").load("region_2_cagayan_second_calayan_0025B.jsp #reg2");$("#label").load("region_2_cagayan_second_calayan_0025B.jsp #title");}
	function region_2_cagayan_second_calayan_0026B(){$("#area").load("region_2_cagayan_second_calayan_0026B.jsp #reg2");$("#label").load("region_2_cagayan_second_calayan_0026B.jsp #title");}
	function region_2_cagayan_second_calayan_0027B(){$("#area").load("region_2_cagayan_second_calayan_0027B.jsp #reg2");$("#label").load("region_2_cagayan_second_calayan_0027B.jsp #title");}
	
	function region_2_cagayan_second_iguig(){$("#area").load("region_2_cagayan_second_iguig.jsp #reg2");$("#label").load("region_2_cagayan_second_iguig.jsp #title");}
	function region_2_cagayan_second_iguig_0030B(){$("#area").load("region_2_cagayan_second_iguig_0030B.jsp #reg2");$("#label").load("region_2_cagayan_second_iguig_0030B.jsp #title");}
	function region_2_cagayan_second_iguig_0031B(){$("#area").load("region_2_cagayan_second_iguig_0031B.jsp #reg2");$("#label").load("region_2_cagayan_second_iguig_0031B.jsp #title");}
	function region_2_cagayan_second_iguig_0032B(){$("#area").load("region_2_cagayan_second_iguig_0032B.jsp #reg2");$("#label").load("region_2_cagayan_second_iguig_0032B.jsp #title");}
	function region_2_cagayan_second_iguig_0033B(){$("#area").load("region_2_cagayan_second_iguig_0033B.jsp #reg2");$("#label").load("region_2_cagayan_second_iguig_0033B.jsp #title");}
	
	function region_2_cagayan_first(){$("#area").load("region_2_cagayan_first.jsp #reg2");$("#label").load("region_2_cagayan_first.jsp #title");}
	function region_2_cagayan_first_teresita(){$("#area").load("region_2_cagayan_first_teresita.jsp #reg2");$("#label").load("region_2_cagayan_first_teresita.jsp #title");}
	function region_2_cagayan_first_teresita_0005B(){$("#area").load("region_2_cagayan_first_teresita_0005B.jsp #reg2");$("#label").load("region_2_cagayan_first_teresita_0005B.jsp #title");}
	function region_2_cagayan_first_teresita_0006B(){$("#area").load("region_2_cagayan_first_teresita_0006B.jsp #reg2");$("#label").load("region_2_cagayan_first_teresita_0006B.jsp #title");}
	function region_2_cagayan_first_teresita_0007B(){$("#area").load("region_2_cagayan_first_teresita_0007B.jsp #reg2");$("#label").load("region_2_cagayan_first_teresita_0007B.jsp #title");}
	function region_2_cagayan_first_teresita_0008B(){$("#area").load("region_2_cagayan_first_teresita_0008B.jsp #reg2");$("#label").load("region_2_cagayan_first_teresita_0008B.jsp #title");}
	
	function region_2_cagayan_first_gattaran(){$("#area").load("region_2_cagayan_first_gattaran.jsp #reg2");$("#label").load("region_2_cagayan_first_gattaran.jsp #title");}
	function region_2_cagayan_first_gattaran_0010B(){$("#area").load("region_2_cagayan_first_gattaran_0010B.jsp #reg2");$("#label").load("region_2_cagayan_first_gattaran_0010B.jsp #title");}
	function region_2_cagayan_first_gattaran_0011B(){$("#area").load("region_2_cagayan_first_gattaran_0011B.jsp #reg2");$("#label").load("region_2_cagayan_first_gattaran_0011B.jsp #title");}
	function region_2_cagayan_first_gattaran_0012B(){$("#area").load("region_2_cagayan_first_gattaran_0012B.jsp #reg2");$("#label").load("region_2_cagayan_first_gattaran_0012B.jsp #title");}
	function region_2_cagayan_first_gattaran_0013B(){$("#area").load("region_2_cagayan_first_gattaran_0013B.jsp #reg2");$("#label").load("region_2_cagayan_first_gattaran_0013B.jsp #title");}
	
	$(document).ready(function() 
	    { 
        	$("#label").load("all.jsp #title");
	        $("#area").load("all.jsp #all");

	    } 
	);
	
	
</script>
  </body>
</html>
