<?php
require "Conn.php";		//连接conn数据库连接文件

$add=$_GET['address'];
//测试，要点两次才能更新数据
echo $add;
if($add!=""){
$aaa ="update addAddress set address='{$add}' where weixinID=999 ";//$add是字符型的数据的列所以用‘{}’格式包裹

mysqli_query($con,$aaa);		//因为一个mysqli_query只能执行一条语句
}


$sql ="select * from addAddress";			//选择addAddress表
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