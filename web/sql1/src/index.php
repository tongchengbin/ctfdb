<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="description" content="纯种猫 猫舍 ，辛巴猫舍为CFA注册猫舍，繁育纯种波斯猫和异国短毛梵纹猫"/>
<meta name="keywords" content="猫舍,纯种猫,种猫,波斯猫,CFA,加菲猫,异短,异国短毛,cfa"/> 
<meta name="author" content="辛巴/薇妮猫 猫舍"/> 
<link rel="stylesheet" type="text/css" href="../default.css" media="screen"/>
<title>宠物猫 异国短毛猫 纯种猫 加菲猫 波斯猫 辛巴猫舍 纯种双色/梵文波斯、异国小猫 CFA注册猫舍</title>
<style type="text/css">
<!--
.STYLE2 {
	color: #FFFFFF;
	font-size: 9px;
}
.STYLE9 {color: #FF0000}
.STYLE15 {font-size: 14}
-->
</style>
</head>

<body>

<div class="container">

	<div class="gfx"><span></span></div>

	<div class="top">

		<div class="navigation">
			<a href="index.php" id="selected">首页</a>
		</div>

		<div class="pattern"><span></span></div>

		<div class="header">
	  </div>

		<div class="pattern"><span></span></div>

	</div>

  <div class="content">
<?php
$id = @$_GET['id'];
if($id<1){
	echo "<a href=\"?id=1\">点击查看新闻1</a>";
	#system('mysql -uroot  < /maoshe.sql');
}
else
{	
	$a=new PDO("mysql:host=localhost;dbname=maoshe;charset=utf8","root","");
    $b=$a->query("SELECT * FROM `news` WHERE `id`=".$_REQUEST["id"].";");
    $red = $b->fetchAll();
    echo $red[0]["content"];
}
?>
<div align="center">

</div>
</body>

</html>