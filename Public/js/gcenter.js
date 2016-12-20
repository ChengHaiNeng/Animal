function getpic(){
	sign = 1;
	/*$.post("/index.php/Home/Publish/dianzan",{ "buid": buid,"aid" : aid},function(data){
    if(data.indexOf("ok") == -1){
      alert('您已点过赞了');
    }else{
      //获取当前“赞”的次数并加1
      var finger = parseInt($("#finger"+(aid||buid)).html())+1;
      //更新“赞”的次数
      $("#finger"+(aid||buid)).html(finger);
    }
  }, "text");*/
}
//取出cookie的js
function getCookie(name){
  var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
  if(arr=document.cookie.match(reg))
  return unescape(arr[2]);
  else
  return null;
}
function getinfo(){
	sign = null;
}

function getme(){
	sign = null;
}

function getarticle(){
	sign = null;
}
$(window).scroll(function () {
	if (sign == 1) {
		if ($(window).scrollTop() == $(document).height() - $(window).height()) {
		alert('bottom!!');}
	}
});