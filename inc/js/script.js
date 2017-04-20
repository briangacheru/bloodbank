$(document).ready(function(){
	$error = $('<center><label class = "text-danger">Please Fill up the form!</label></center>');
	$error1 = $('<center><label class = "text-danger">Invalid username or password</label></center>');
	$loading = $('<center><img src = "images/loading.gif"></center>');
	$load_status= $('<center><label class = "text-success">Waiting...</label></center>');
	$valid = $('<center><label class = "text-danger">Username already taken!</label></center>');
	$mem_valid = $('<center><label class = "text-danger">Member name already exist!</label></center>');
	$club_valid = $('<center><label class = "text-danger">Request already exist!</label></center>');
	$group_valid = $('<center><label class = "text-danger">Member already joined!</label></center>');
	

// Member Edit
$('#mem_edit').click(function(){
		$error.remove();
		$id = $('#id').val();
		$mem_valid.remove();
		$fname = $('#fname').val();
		$lname = $('#lname').val();
		$email = $('#email').val();
		$b_id = $('#b_id').val();
		if($fname == "" || $lname == "" || $email == "" || $b_id == ""){
			$error.appendTo('#loading');
		}else{
			$load_status.appendTo('#loading');
			setTimeout(function(){
				$.post('mem_validator.php', {fname: $fname, lname: $lname, email: $email, b_id: $b_id},
					function(result){
						if(result == "Success"){
							$mem_valid.appendTo('#loading');
						}else{
							$.ajax({
								type: 'POST',
								url: 'mem_edit_query.php?id=' + $id,
								data: {fname: $fname, lname: $lname, email: $email, b_id: $b_id},
								success: function(){
									window.location = 'member.php';
								}
							});
						}
					}
				)
			$load_status.remove();	
			}, 3000)
		}
	});

// Blood Request
$('#req_edit').click(function(){
		$error.remove();
		$id = $('#id').val();
		$club_valid.remove();
		$fname = $('#fname').val();
		$lname = $('#lname').val();
		$b_id = $('#b_id').val();
		if($fname == "" || $lname == "" || $b_id == ""){
			$error.appendTo('#loading');
		}else{
			$load_status.appendTo('#loading');
			setTimeout(function(){
				$.post('req_validator.php', {fname: $fname, lname: $lname, b_id: $b_id},
					function(result){
						if(result == "Success"){
							$club_valid.appendTo('#loading');
						}else{
							$.ajax({
								type: 'POST',
								url: 'req_edit_query.php?id=' + $id,
								data: {fname: $fname, lname: $lname, b_id: $b_id},
								success: function(){
									window.location = 'member.php';
								}
							});
						}
					}
				)
			$load_status.remove();	
			}, 3000)
		}
	});
	
});