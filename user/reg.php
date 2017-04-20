
<?php

include_once 'db.php';

if(isset($_POST['btn-register']))
{
	$fname = $MySQLi_CON->real_escape_string(trim($_POST['fname']));
	$lname = $MySQLi_CON->real_escape_string(trim($_POST['lname']));
	$day = $MySQLi_CON->real_escape_string(trim($_POST['day']));
	$month = $MySQLi_CON->real_escape_string(trim($_POST['month']));
	$year = $MySQLi_CON->real_escape_string(trim($_POST['year']));
    $county = $MySQLi_CON->real_escape_string(trim($_POST['county']));
	$email = $MySQLi_CON->real_escape_string(trim($_POST['email']));

	$imgFile = $_FILES['p_pic']['name'];
    $tmp_dir = $_FILES['p_pic']['tmp_name'];
    $imgSize = $_FILES['p_pic']['size'];

	$gender = $MySQLi_CON->real_escape_string(trim($_POST['gender']));
	$mobile = $MySQLi_CON->real_escape_string(trim($_POST['mobile']));
	$password = $MySQLi_CON->real_escape_string(trim($_POST['password']));
	$con_password = $MySQLi_CON->real_escape_string(trim($_POST['con_password']));
	
	$new_password = password_hash($password, PASSWORD_DEFAULT);

	if(empty($_SESSION['captcha_code'] ) || strcasecmp($_SESSION['captcha_code'], $_POST['captcha_code']) != 0){  
		$msg2="<span style='color:red'>The Validation code does not match!</span>";// Captcha verification is incorrect.		
	}else{// Captcha verification is Correct. Final Code Execute here!
		$msg2="<span style='color:green'>The Validation code has been matched.</span>";		

	
	if($password!=$con_password){
      	$msg1 = "<div class='alert bg-info'>
						<button class='close' data-dismiss='alert'>&times;</button>
						 Passwords Do Not Match ! Try Again
					</div>";
       }else{


            $check_email = $MySQLi_CON->query("SELECT email, mobile FROM donarregister WHERE email='$email' OR mobile='$mobile'");
            $count=$check_email->num_rows;
	
//if(empty($imgFile)){
  // $msg1 ="<div class='alert bg-info'>
	//					<button class='close' data-dismiss='alert'>&times;</button>
	//					 Please Select Image File. !
	//				</div>";
  //}	
  //else
  //{
   //$upload_dir = '../assets/images/'; // upload directory
 
   //$imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION)); // get image extension
  
   // valid image extensions
   //$valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
  
   // rename uploading image
  // $ppic = rand(1000,1000000).".".$imgExt;
    
   // allow valid image file formats
  // if(in_array($imgExt, $valid_extensions)){   
    // Check file size '5MB'
  //  if($imgSize < 5000000)    {
    // move_uploaded_file($tmp_dir,$upload_dir.$ppic);
    //}
    //else{
    // $errMSG = "Sorry, your file is too large.";
    //}
  // }
   //else{
   // $errMSG = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";  
   //}
  }

	
	if($count==0){
		
		
		$query = "INSERT INTO donarregister(fname,lname,email,mobile,password, ppic,gender,day,month,year,county)
 					VALUES('$fname','$lname','$email','$mobile','$new_password','$ppic','$gender','$day','$month','$year','$county')";
		
		if($MySQLi_CON->query($query))
		{
            $msg1 =  "<div class='alert bg-succeed'>
					<button class='close' data-dismiss='alert'>&times;</button>
					Successfully registered click  <a href='login'> here </a> to login.
			  	</div>";
			
			
					//$query3 = $MySQLi_CON->query("SELECT fname,lname, email,mobile, password FROM donarregister WHERE email='$email'");
					//$row=$query3->fetch_array();
					//$_SESSION['userSession'] = $row['email'];
					//header("Location: ../index"); // redirects image view page after 5 seconds.
		}
		else
		{
			$msg1 = "<div class='alert bg-info'>
						<button class='close' data-dismiss='alert'>&times;</button> Error while registering !!!
					</div>";
		}
	}
	else{
		
		
		$msg1 = "<div class='alert bg-info'>
				<button class='close' data-dismiss='alert'>&times;</button>
					<strong>Sorry !</strong>  Email or Mobile Number already exists. Please Try another one
			  </div>
			  ";
			
	}


	}
}
	$MySQLi_CON->close();

?>


