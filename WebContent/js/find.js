$("#findgoods").click(function(){
	var a = $("#findgoodsinfo").val();
	window.location.href="FindGoodsServlet?info="+a;
	
});