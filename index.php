<html>
<head>
	<style type="">
		.username,.password{
			padding-bottom: 20px;
		}
		form{
			margin-left: 40%;
			margin-top: 20%;
			font-size: 24px;
		}
		input{
			height: 30px;
			width:300px;
			border-radius: 8px;
		}
		.btn{
			padding:8px 24px;
			border-radius: 6px;
		}
	</style>
</head>

<body>
	<!-- Login Page -->
<form action="" method="POST">
	<div class="username">
   <label>Username : </label><br>
   <input id="username" value="" name="username" type="text" required="required" /><br>
   </div>
   <div class="password">
   <label>Password : </label><br>
   <input id="password" name="password" type="password" required="required" /><br>
   </div>
   <button type="submit" class="btn" name="submit"><span>Login</span></button> 
 </form>

</body>
</html>
<?php 
//Calling To Controller Page
 include_once("Controller/controller.php");

/* $controller = new Controller();
 $controller->invoke();
 ?>*/