<?php
	session_start();
	//if the session id for the user exists use the same ID
	if(isset($_SESSION['SESS_CHANGEID']) == TRUE){
		session_unset();
		session_regenerate_id();
	}
	require("connection.php");	
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<head>

<title><?php echo $config_sitename; ?></title>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id = "header">
<h1><?php echo $config_sitename;?></h1>
</div>

<div id = "menu">
<a href = "<?php echo $config_basedir;?>" > Home </a>
<!--provide list of items in the basket ; provide checkout link -->
<a href = "<?php echo $config_basedir;?>showcart.php">ViewBasket/Checkout</a></div>

<div id = "container">
<div id = "bar">

<?php
	require("bar.php"); //contains the list of categories
	
	echo "<hr>";
	
	//if the user is registered user 
	//record session and include the logout link
	if(isset($_SESSION['SESS_LOGGEDIN'])){
		echo "Logged in as <strong>" . $_SESSION['SESS_USERNAME']. "</strong>[<a href='" . $config_basedir. "logout.php'>logout</a>]";		
	}
	
	
	//else if the user is unregistered, provide the log in option
	else
	{
	echo "<a href='". $config_basedir . "login.php'>Login</a>";
		
	}
	
	
?>
</div>
<div id = "main">