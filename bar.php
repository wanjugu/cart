<h1>Product Categories</h1>
<ul>
<?php
require("connection.php");
$sql = "SELECT * FROM categories;";
$result = mysqli_query($conn,$sql);
while($row = mysqli_fetch_assoc($result))
{
echo "<li><a href='" . $config_basedir. "products.php?id=" . $row['id'] . "'>". $row['name'] . "</a></li>";
}
?>
</ul>
