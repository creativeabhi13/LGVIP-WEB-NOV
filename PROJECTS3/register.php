<?php
include("config.php");
$roll=$_POST['roll'];
$sem=$_POST['sem'];
$email=$_POST['email'];
$nam=$_POST['name'];

if($roll==NULL || $sem==NULL || $email==NULL || $nam==NULL)
{
	//
}
else
{
	$sql=mysqli_query($al,"INSERT INTO students(name,roll,sem,email) VALUES('$nam','$roll','$sem','$email')");
	if($sql)
	{
		$msg="Successfully registered!";
	}
	else
	{
		$msg="Email Already Exists";
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Result Management System</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body><br />

<div align="center">
<span class="head">Student Result Portal</span>
<br />
<br />
<span class="subhead">Student Registration</span>
<br />
<br />
<br />
<form method="post" action="">
<table border="0" cellpadding="10" cellspacing="10" class="design">
<tr><td colspan="2" align="center" class="msg"><?php echo $msg;?></td></tr>
<tr><td class="labels">Name :</td><td><input type="text" name="name" class="fields" required="required" size="20" placeholder="Enter Full Name" /></td></tr>
<tr><td class="labels">Registration number:</td><td><input type="text" name="roll" class="fields" required="required" size="20" placeholder="Enter Registration number " /></td></tr>
<tr><td class="labels">Semester :</td><td><select name="sem" class="fields" style="background-color:white;" required>
<option value="" disabled="disabled" selected="selected">Select</option>
<option value="1">First Sem</option>
<option value="2">Second Sem</option>
<option value="3">Third Sem</option>
<option value="4">Fourth Sem</option>
<option value="5">Fifth Sem</option>
<option value="6">Sixth Sem</option>
<option value="7">Seventh Sem</option>
<option value="8">Eighth Sem</option>
</select>
</td></tr>
<tr><td class="labels">E-Mail ID : </td><td><input type="email" name="email" class="fields" size="20" placeholder="Enter Email" required="required" /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Register" class="button" /></td></tr>
</table>
</form>
<br />
<br />
<a href="index.php" class="link">Home</a>
</div>
<footer> <p class="footer"><small>Copyright © SRMS | Brought To You By <a href="https://education-technology.github.io/">Edutech @Abhishek Kumar </a>@2021</small> </p></footer>
</body>
</html>