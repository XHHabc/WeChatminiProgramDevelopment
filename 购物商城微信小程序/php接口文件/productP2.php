<?php
require "Conn.php";		//连接conn数据库连接文件

$sql="select * from productP2";	//选择productP2表
$jiehuo=mysqli_query($con,$sql);
if(!$jiehuo){
	die("获取数据失败");
}
//获取全部数据
$Arr=mysqli_fetch_all($jiehuo,MYSQLI_ASSOC);
$Arr=json_encode($Arr);

exit($Arr);

mysqli_close($con);

?>