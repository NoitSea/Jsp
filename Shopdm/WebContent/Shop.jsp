<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在线点餐，填饱你的肚子</title>

<script type="text/javascript">  
function ck() {  
    var result = confirm("你真的想取消香喷喷的套餐？");  
    if (result == true) {  
        alert("你已被列入黑名单！不支持退订服务 ");  
    } else {  
        alert("这就对了，你想取消也是不行的。");  
    }  
}  
</script>  


<style type="text/css">
body{
  background-image:url(image/Spq.jpg) 
  }
</style>
</head>

<body> 
   <form action="ShopCheck.jsp" method="get">
    <hr>
    尊贵的客人欢迎访问本网站！
    <hr>
   <select name="item"> 
   <option>吮指原味鸡(全吃掉我还要!)</option>
   <option>日式咖喱鸡饭套餐</option>
   <option>香麻藤椒鱿</option>
   <option>哲学全家桶</option>
   <option>脆皮霸王鸡翅</option>
   <option>缤纷甜筒(儿童特供)</option>
   <option>托马斯老火车套餐(污污)</option>
  </select>
 <br>
<hr>
<input type="submit"name="submit"value="买买买"/>
&nbsp;&nbsp;&nbsp;
<input type="reset"name="submit2" value="买了还想退？没门" onClick="ck()"/>

</form>
</body>
</html>