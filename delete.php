<?php
require("connection.php");
require('header.php');

$itemsql = "SELECT * FROM orderitems WHERE id = ". $_GET['id'] . ";";
$itemres = mysqli_query($conn,$itemsql) or die(mysql_error());
$numrows = mysqli_num_rows($itemres);
if($numrows == 0) {
header("Location: showcart.php");
}
$itemrow = mysqli_fetch_assoc($itemres);

$prodsql = "SELECT price FROM products WHERE id = " . $itemrow['product_id'] . ";";
$prodres = mysqli_query($conn,$prodsql)or die(mysql_error());;
$prodrow = mysqli_fetch_assoc($prodres); 
$sql = "DELETE FROM orderitems WHERE id = " . $_GET['id'];
$del=mysqli_query($conn,$sql)or die(mysql_error());;
if($del){
	header("Location: showcart.php");
}
require('footer.php');
?>