//当点击赞的时候触发post ajax
function finger(topic_id){
  $.post("/index.php/Home/Publish/dianzan",{ "aid": topic_id },function(data){
    if(data.indexOf("ok") == -1){
      alert('您已点过赞了');
    }else{
      //获取当前“赞”的次数并加1
      var finger = parseInt($("#finger"+topic_id).html())+1;
      //更新“赞”的次数
      $("#finger"+topic_id).html(finger);
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
