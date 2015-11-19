<?php
	session_start();
	require("connection.php");
	require("header.php");
	require("functions.php");
	
	echo "<h1>Your Cart</h1>";
	
	showcart();
	if(isset($_SESSION['SESS_ORDERNUM'])){
		$sess_ordernum = $_SESSION['SESS_ORDERNUM'];
		$sql = "SELECT * FROM orderitems WHERE order_id =$sess_ordernum";
		
		$result = mysqli_query($conn,$sql) or die(mysql_error());
		
		$row = mysqli_num_rows($result);
		
		if($row >= 1){
			echo "<h2><a href='checkout-address.php'>Go to the checkout</a></h2>";

		}
	}
	require("footer.php");
	
?>