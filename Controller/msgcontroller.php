<?php
error_reporting (E_ALL ^ E_NOTICE);
	session_start();
	include("../Model/loginmodel.php");
	$model = new Model();
	$var = $_POST['msg'];
	echo $var;
	if(isset($_POST['Logout'])){
		$model->logout();
	}
	?>
<script type="text/javascript">
	$(document).ready(function(){
		//ajax call for page refresh
		setInterval(function(){
			user_last_activity();
			show_chat();
			user_details();
			is_type_details();
			
		},500);
		setInterval(function(){
			all_user_btn();
		},700);
		//form submit insert data
		$( '#msg_form' ).submit(function(e){
	    var msg = $('#msg').val();
	    $.ajax({
	        url: '../Controller/ajaxcontroller.php',
	        data:{message:msg} ,
	        processData: true,
	        method: 'POST',
	        success: function ( data ) {
	      /*var element = $('#msg').emojioneArea();
    		element[0].emojioneArea.setText('');*/
	        $('#showchat').html(data);
	        }
	    });
	     var msg = $('#msg').val("");
	     e.preventDefault();
		});
		//get all message 
		$( '#showchatfrom' ).submit(function(e){
	    var username = $('#username').val();
	    $.ajax({
	        url: '../Controller/ajaxcontroller.php',
	        data:{username:username} ,
	        processData: true,
	        method: 'POST',
	        success: function ( data ) {
	        }
	    });
	     var msg = $('#msg').val("");
	    e.preventDefault();
		});
		//for is_type or not
		$(document).on('focus','#msg',function(e){
			var is_type = 'yes';
		$.ajax({
			url:'../Controller/ajaxcontroller.php',
			data:{is_type1:is_type},
			processData:true,
			method:'POST',
			success:function( data ){
				$('').html(data);
			}
		});
		 e.preventDefault();
	});

		$(document).on('blur','#msg',function(e){
			var is_type = 'no';
		$.ajax({
			url:'../Controller/ajaxcontroller.php',
			data:{is_type1:is_type},
			processData:true,
			method:'POST',
			success:function( data ){
				$('').html(data);
			}
		});
		 e.preventDefault();
	});
	//for show records on click button
		$(document).on('click','#btn',function(e){
			var btnvalue = $(this).val();
			$.ajax({
			url:'../Controller/ajaxcontroller.php',
			data:{btnvalue:btnvalue},
			processData:true,
			method:'POST'
		})
			e.preventDefault();
		});
		//for delete chat
		$(document).on('click','.remove_chat',function(e){
			var remove_chat = $(this).attr('id');
			if(confirm("Are You Sure To Delete Chat")){
				$.ajax({
			url:'../Controller/ajaxcontroller.php',
			data:{remove_chat:remove_chat},
			processData:true,
			method:'POST',
			success:function(data){
					$('').html(data);
				}
			})
				e.preventDefault();
			}
		});
		//for userlast active
		function user_last_activity(){
			var last_activity = 'time';
			$.ajax({
				url:'../Controller/ajaxcontroller.php',
				data:{
					last_activity:last_activity
				},
				processData:true,
				method:'POST',
				success:function(data){
					$('').html(data);
				}
			})
		}
		//show all chat of user
		function show_chat(){
			var showchat = 'showchat';
			$.ajax({
				url:'../Controller/ajaxcontroller.php',
				data:{
					showchat:showchat
				},
				processData:true,
				method:'POST',
				success:function(data){
					$('#showchat').html(data);
				}
			})
		}
		//show all userbutton
		function all_user_btn(){
			var alluser = 'alluser';
			$.ajax({
				url:'../Controller/ajaxcontroller.php',
				data:{
					alluser:alluser
				},
				processData:true,
				method:'POST',
				success:function(data){
					$('#alluser').html(data);
				}
			})
		}
		//for get username and show above
		function user_details(){
			var user_details = 'username';
			$.ajax({
				url:'../Controller/ajaxcontroller.php',
				data:{
					user_details:user_details
				},
				processData:true,
				method:'POST',
				success:function(data){
					$('#userdetails').html(data);
				}
			})
		}
		//for show typing status
		/*function is_type_details(){
			var is_type_details = 'yes';
			$.ajax({
				url:'../Controller/ajaxcontroller.php',
				data:{
					is_type_details:is_type_details
				},
				processData:true,
				method:'POST',
				success:function(data){
					$('').html(data);
				}
			})*/
		
		/*	window.emojiPicker = new EmojiPicker({
		emojiable_selector: '[data-emojiable=true]',
		assetsPath: '/images/img',
		popupButtonClasses: 'fa fa-smile-o'
		});
		window.emojiPicker.discover();*/
	});


</script>
	