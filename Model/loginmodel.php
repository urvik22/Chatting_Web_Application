<?php
error_reporting (E_ALL ^ E_NOTICE ^ E_WARNING);
session_start();
//Main Function
class Model {

public function getlogin()
{
  // Fetch Details Form Login
    if(isset($_POST['username']) && isset($_POST['password'])){
  	    include('dbcon.php');
        $username = $_POST['username'];
		$pass = $_POST['password'];
		$_SESSION['$username'] = $username;
		$pass = md5($pass);
		 $sql = "Select * from Details where Username='$username' and Password='$pass'";
		 $result = mysqli_query($conn,$sql);
		 $row = mysqli_fetch_assoc($result);
		if($row['Username']==$username && $row['Password']==$pass){
			return 'login';
		}else{
			return 'Invalid Details';
		}
  }
}
 //for Session Destroy And Logout
public function logout()
{
 	session_destroy();
 	header("Location:../index.php");
} 
 //for Dropdown
public function dropdown()
{	
 	include('dbcon.php');
 	$username = $_SESSION['$username']; 
	echo "<option selected='selected'>Select Name</option>";
	$dep_query = mysqli_query($conn,"select * from Details where Username != '$username'");
	while($row=mysqli_fetch_array($dep_query)){
		echo '<option value="'.$row['Username'].'">'.$row['First_Name']." ".$row['Last_Name']."</option>";
	}
}
//Insert Message Function
public function insertmsg($senderid,$receiverid,$msg)
{
	include('dbcon.php');
	$sql = "Insert into Message (Sender_Id,Receiver_Id,Message,Status) values('$senderid','$receiverid','$msg','unread')";
	if(mysqli_query($conn,$sql)){
		
	}else{
		echo "Error: " . $sql . "<br>" . mysqli_error($conn); 
	}
}
//Show Chat Function
public function showchat()
{
	$senderid = $_SESSION['$username'];
	$receiverid = $_SESSION['$receivername'];
	include('dbcon.php');
	$sql = "Select * from Message where (Sender_Id = '$senderid' AND Receiver_Id = '$receiverid') OR (Sender_Id = '$receiverid' AND Receiver_Id = '$senderid') Order by Time ASC";
	$result = mysqli_query($conn,$sql);
	if(mysqli_num_rows($result) > 0){
		while($row = mysqli_fetch_assoc($result)) {
			$userid = '';
        	if($row['Sender_Id']==$senderid){
        		$userid = '<b>You</b>';
        	}else{
        		$userid = '<b>'.$receiverid.'</b>';
        	}
        	if($row['Message'] != ""){
        		if($userid=='<b>You</b>'){
	        		if($row['Status'] == 'read'){
	        		 echo "<p class='sendermsg'>".$userid.'-'.$row['Message']."
	        		  		<sub><button class='remove_chat' id='".$row['Id']."'>x</button></sub><span><b>&#2928;</b></span>
	        		  	   </p>";
	        		}elseif($row['Status'] == 'unread' ){
	        			  echo "<p class='sendermsg'>".$userid.'-'.$row['Message']."
	        		  			<sub><button class='remove_chat' id='".$row['Id']."'>x</button></sub><span><b>&#10003;</b></span>
	        		  		   </p>";
	        		}else{
	        			echo "<p class='sendermsg'>Message Deleted</p>";
	        		}
	            }else{
	            	if($row['Status'] == 'Delete' ){
	            		echo '<p class="receivermsg">Message Deleted</p>';
	            	}else{
	            	echo "<p class='receivermsg'>".$userid.'-'.$row['Message']."
	        		  </p>";
	        		}
	            }
       		}
    	}
	}
	$sql1="update Message SET Status='read' where Sender_Id='$receiverid' And Receiver_Id='$senderid' And Status='unread'";
    mysqli_query($conn,$sql1);
}
//For Fetch All User Activity Status
public function alluser()
{
	include('dbcon.php');
	$username = $_SESSION['$username'];
	$sql = "select * from Details where Username != '$username'";
	$query=mysqli_query($conn,$sql);
	while($row=mysqli_fetch_array($query)){
		$current_timestamp = strtotime(date('Y-m-d H:i:s').'-10 second');
		$current_timestamp = date('Y-m-d H:i:s',$current_timestamp);
		$user_last_activity = $this->user_last_activity($row['Username']);
		$count_msg = $this->count_msg($row['Username'],$username);
		$last_seen=$this->user_last_seen($row['Username']);
		$typing_status=$this->is_type_details($username,$row['Username']);
		if($user_last_activity > $current_timestamp){
			echo "<button class='btn' id='btn' name='Name' value='".$row['Username']."'>".$row['First_Name']." ".$row['Last_Name'].'<span style=float:left;color:red;>'.$count_msg."</span><span style=color:green;>&#9679;</span><div align='right'>
  				<small><em style=font-size:15px;>".$typing_status."</em></small></div></button> <br>";
		}else{
		echo "<button class='btn' id='btn' name='Name' value='".$row['Username']."'>".$row['First_Name']." ".$row['Last_Name'].'<span style=float:left;color:red;>'.$count_msg."</span><span style=color:red;>&#9679;</span><div align='right'>
  				<small><em style=font-size:15px;>".$last_seen."</em></small></div></button> <br>";
		}
	}
}
//for status is istype 
public function is_type($senderid,$receiverid,$is_type){
	include('dbcon.php');
	$sql ="insert into status(sender_id,receiverid,status) values ('$senderid','$receiverid','$is_type') ON DUPLICATE KEY UPDATE receiverid='$receiverid',status='$is_type'";
	mysqli_query($conn,$sql);
}
//Last Update activity or for status online or offline
public function update_last_activity($senderid){
	include('dbcon.php');
	$sql= "INSERT INTO login_details (username,last_activity) VALUES('$senderid',now()) ON DUPLICATE KEY UPDATE 
    last_activity=now()";
	if(mysqli_query($conn,$sql)){
		echo 'updated succesfully';
	}else{
		echo "Error updating record: " . mysqli_error($conn);
	}
}
//for user last activity
public function user_last_activity($username){
	include('dbcon.php');
	$sql = "select * from login_details where username='$username' ORDER BY last_activity DESC LIMIT 1"; 
	$query=mysqli_query($conn,$sql);
	while($row=mysqli_fetch_array($query)){
		return $row['last_activity'];
	}
}
public function user_last_seen($username){
	include('dbcon.php');
	$sql = "select * from login_details where username='$username' ORDER BY last_activity DESC LIMIT 1"; 
	$query=mysqli_query($conn,$sql);
	while($row=mysqli_fetch_array($query)){
		$datetime1 = new DateTime();
		$datetime2 = new DateTime($row['last_activity']);
		$interval = $datetime1->diff($datetime2);
		/*$elapsed = $interval->format('%h hour %i minute ');*/
		 $year = $interval->y;
		 $month = $interval->m;
		 $days = $interval->a;
	     $hour = $interval->h;
		 $minute = $interval->i;
		 if($year == 0){
		 	if($month == 0){
		 		if($days == 0){
		 			if($hour == 0){
		 				return $minute. ' minutes ago ';
		 			}else{
		 				return $hour.' hours '.$minute. ' minutes ago ';
		 			}
		 		}else{
		 			return $days.' days '.$hour.' hours '.$minute. ' minutes ago ';
		 		}
		 	}else{
		 		return $month.' months '.$days.' days '.$hour.' hours '.$minute. ' minutes ago ';
		 	}
		 }else{
		 	return  $year.' years '.$month.' months '.$days.' days '.$hour.' hours '.$minute. ' minutes ago ';
		 }
	}
}
//count total unread message
public function count_msg($senderid,$receiverid){
	include('dbcon.php');
	$sql = "SELECT * FROM `Message` WHERE Sender_Id='$senderid' And Receiver_Id='$receiverid' AND status='unread'";
	$query = mysqli_query($conn,$sql);
	$result = mysqli_num_rows($query);
	if($result==0){
	}else{
		return '('.$result.')';
	}
}
//Details of itype status
public function is_type_details($senderid,$receiverid){
	include('dbcon.php');
	$qry = "select * from status where sender_id = '$receiverid' and receiverid = '$senderid' and status='yes'";
	$result = mysqli_query($conn,$qry);
	if(mysqli_num_rows($result)>0){
		return "Typing.........";
	}
}
//Delete Message
public function remove_chat($remove_chat){
	include('dbcon.php');
	$qry = "update Message set Status='Delete' where Id='$remove_chat'";
	mysqli_query($conn,$qry);
}
}


?>