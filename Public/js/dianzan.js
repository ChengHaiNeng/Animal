function finger(buid=null,aid=null){
  //如果没有cookie就没有登陆说明没登陆跳转到登陆页面
  if (!getCookie('username')) {
    location.href = "/Home/User/login";
    return;
  }
  //当点击赞的时候触发post ajax
  $.post("/Home/Publish/dianzan",{ "buid": buid,"aid" : aid},function(data){
    if(data.indexOf("ok") == -1){
      alert('您已点过赞了');
    }else{
      //获取当前“赞”的次数并加1
      var finger = parseInt($("#finger"+(buid||aid)).html())+1;
      //更新“赞”的次数
      $("#finger"+(buid||aid)).html(finger);
    }
  }, "text");
}
//取出cookie的js
function getCookie(name){
  var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
  if(arr=document.cookie.match(reg))
  return unescape(arr[2]);
  else
  return null;
}
