<html>
<head>
	<link rel="stylesheet" href="bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>  
 <br/>  


<div class="container">

      <form class="form-signin" action="loginprocess.jsp" method="post">
        <h2 class="form-signin-heading" style="width: 30%; position: absolute;top: 8%; left: 44%;">CENCAS LOGIN</h2>
        <label for="inputEmail" class="sr-only">Username</label>
        <input name="username" id="inputEmail" class="form-control" style="width: 30%; position: absolute; top: 15.9%;left: 35%;" placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input name="password" type="password" id="inputPassword" class="form-control" style="width: 30%; position: absolute; top: 21%;left: 35%;" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit" style="width: 30%; position: absolute;top: 30%; left: 35%;">Login</button>
      </form>

</div>
</body>
</html>