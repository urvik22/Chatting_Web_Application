<?php
	error_reporting (E_ALL ^ E_NOTICE);
	session_start();
	require("../Model/loginmodel.php");
	$model = new Model();
	$var = $_POST['message'];
	$is_type = $_POST['is_type1'];
	$last_activity = $_POST['last_activity'];
	$showchat = $_POST['showchat'];
	$alluser = $_POST['alluser'];
	$username = $_POST['username'];
	$btn = $_POST['btn'];
	$user_details=$_POST['user_details'];
	$is_type_details=$_POST['is_type_details'];
	$btnvalue = $_POST['btnvalue'];
	$remove_chat=$_POST['remove_chat'];
	
	/*$showchat = $_POST['show'];*/
	if(!empty($user_details)){
		if($_SESSION['$receivername']=="Select Name"){
			$_SESSION['$receivername']="Please Select Name";
		}else{
		echo 'Message Conversion With username<br><b style="font-size:24px;">'.$_SESSION['$receivername'];
	}
	}
	if(!empty($remove_chat)){
		
		$model->remove_chat($remove_chat);
	}
	if(!empty($username)){
		if($username=='Select Name'){
			$name='Select Name';
		}else{
			$name=$username;
		}
		$_SESSION['$receivername']=$name;
	}
	if(!empty($btnvalue)){
		$_SESSION['$receivername']=$btnvalue;
	}
	if(!empty($var)){
		$senderid = $_SESSION['$username'];
		$receiverid = $_SESSION['$receivername'];
		echo $receiverid;
		if($senderid != "" && $receiverid != "Select Name" && $receiverid != ""){
		$model->insertmsg($senderid,$receiverid,$var);
		$model->showchat($senderid,$receiverid);
		}else{
			echo "<script>alert ('please select Receiver Name')</script>";
		}
	}
	if(!empty($is_type)){
		$senderid = $_SESSION['$username'];
		$receiverid = $_SESSION['$receivername'];
		$model->is_type($senderid,$receiverid,$is_type);
	}
	/*if(!empty($is_type_details)){
		$senderid = $_SESSION['$username'];
		$receiverid = $_SESSION['$receivername'];
		$model->is_type_details($senderid,$receiverid);
	}*/
	if(!empty($last_activity)){
		$senderid = $_SESSION['$username'];
		$model->update_last_activity($senderid);
	}
	if(!empty($showchat)){
		$model->showchat();
	}
	if(!empty($alluser)){
		$model->alluser();
	}
?>

