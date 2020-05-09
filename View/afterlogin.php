<?php
	session_start();
	if($_SESSION['$username']==''){
		header('Location:../index.php');
	}
?>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">
  	<link href="lib/css/emoji.css" rel="stylesheet">
	<style type="">
		#left{
			float: left;
		}
		#right{
			float:right;
		}
		.dropdown{
			width:70%;
			height: 40px;
			font-size: 24px;
			padding-left: 24px;
			margin-left: 24px;
			margin-bottom: 30px;
			border-radius: 8px;
		}
		.chat{
			width: 50%;
			height:30px;
			border-radius: 8px;
			margin-left: 24px;
		}
	.textarea{
			  position: relative;
			  width:700px;
			  bottom: 10px;
			} 
	.textfield{
		width:100%;
		height:30px;
		border-radius: 4px;
	}
	#sendbtn{
		padding: 8px 20px;
		border-radius: 8px;
		width:30%;
	}
	.logoutbtn{
		width:50%;
		padding: 8px 20px;
		border-radius: 8px;
	}
	.Chatting_History{
		 height:473px;
		 width:100%;
		 overflow:auto;
	}
	.alluser{
		overflow-y: scroll;
		height:470px;
		 width:300px;

	}
	.btn{
		width:90%;
		padding: 8px 20px;
		font-size: 20px;
		border-radius: 8px;
	}
	.sendermsg{
		border:1px solid #ccc;
		margin-left:644px; 
		border-radius:8px;
		width:300px;
		text-overflow: ellipsis;
		overflow: hidden;
		padding:10px 0px;
		background-color: #f8e896;
	}
	.receivermsg{
		text-overflow: ellipsis;
		overflow: hidden;
		border:1px solid #ccc;
		border-radius:8px;
		width:300px;
		padding:10px 0px;
		background-color: #A8DDFD;
	}
	span {
		content: "\2713";
		float: right;
	}
	.remove_chat,.design_remove{
		background-color: transparent;
		border:0px;
		float: right;
	}
	@media only screen and (max-width: 767px) {
 		.left,.right{
 			width: 100%;
 		}
 		.sendermsg{
 			margin-left: 250px;
 		}
 		.alluser{
 			margin-left: 25px;
 			width:80%;
 		}
 		.textarea{
 			width:450px;
 		}
}
	</style>
</head>

<?php
require('../Controller/msgcontroller.php');
?>

<body>
<!-- Left Side View -->
<div class="row">
<div id="left" class="col-md-3">
	<!-- Userdetails Show -->
	<p style='padding-left:24px;' id='userdetails'> </p>
	<!-- DropDown -->
	<form id="showchatfrom" action="" method="POST">
	<select  id="username" name="Name" class="dropdown">
	 <?php  $model->dropdown(); ?>
	</select><br>
	<input type="submit" name="chat" value="Chat Now" class="chat" id="chat">
	</form>
	<!-- All User Show And Their Status -->
	<div class="alluser">
		<form action="" method="POST">
			<div id='alluser'>
			</div>	
		</form>
	</div> 
</div>
<!-- Chat Area And Sending Messaage And Logout -->
<div id="right" class="col-md-9">
	<div class="Chatting_History" id="showchat">
	</div>
	<div class="textarea">
		<!-- typing notification -->
		 <p id="paratype"> </p> 
	<form id="msg_form" action="" method="POST" >
	    <input type="text" data-emojiable="true" data-emoji-input="unicode" id="msg" name="msg"  class="textfield" > 
		<input type="submit" name="send" value="send" id="sendbtn">	
	</form>
	<br>
	<form action="" method="POST">
		<input type="submit" name="Logout" value="Logout" class="logoutbtn">
	</form>
	</div>
</div>
</div>

</body>
</html>

