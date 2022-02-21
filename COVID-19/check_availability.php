<?php 
require_once("includes/config.php");

if(!empty($_POST["mobnumber"])) {
	$mnumber= $_POST["mobnumber"];

		$result =mysqli_query($con,"select id from tblpatients where MobileNumber='$mnumber'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Mobile number already exists. Please try with another mobile number or click on this <a href='registered-user-testing.php'>Registered Users</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Mobile available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}

if(!empty($_POST["employeeid"])) {
	$empid= $_POST["employeeid"];

		$result =mysqli_query($con,"select id from tblphlebotomist where EmpID='$empid'");
		$count=mysqli_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Employee ID already exists. Please try with another employee ID.</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Employee ID  available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
