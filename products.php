<?php
	require("connection.php");
	require("functions.php");
	
	$validid = pf_validate_number($_GET['id'], "redirect",$config_basedir);
	
	require("header.php");
	
	$sql = "SELECT * FROM products WHERE cat_id = ". $_GET['id'].";";
	
	$result = mysqli_query($conn,$sql);
	$rows = mysqli_num_rows($result);
	
	if($rows == 0){
		echo "<h1>No Products</h1>";
		echo "Sorry, There's No products in this category.";
		}else{
		echo "<table cellpadding='10'>";
while($row = mysqli_fetch_assoc($result))
{
echo "<tr>";
if(empty($row['image'])) {
echo "<td><img
src='./productimages/dummy.jpg' alt='". $row['name'] . "'></td>";
}
else {
echo "<td><img src='./productimages/" . $row['image']. "' alt='". $row['name'] . "'></td>";
}
echo "<td>";
echo "<h2>" . $row['name'] . "</h2>";
echo "<p>" . $row['description'];
echo "<p><strong>OUR PRICE: &pound;". sprintf('%.2f', $row['price']) . "</strong>";
echo "<p>[<a href='addtobasket.php?id=". $row['id'] . "'>buy</a>]";
echo "</td>";
echo "</tr>";
}
echo "</table>";
}
require("footer.php");
?>
