sign = null;
function getpic(){
	sign = 1;
  $('.ds-thread').hide();
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
  $('.ds-thread').show();
	sign = null;
}

function getme(){
  $('.ds-thread').show();
	sign = null;
}

function getarticle(){
  $('.ds-thread').show();
	sign = null;
}

$(window).scroll(function () {
	if (sign == 1) {
		if ($(window).scrollTop() == $(document).height() - $(window).height()) {
      var pa = $('.am-gallery-item').length;
      var hide_uid = $('#hide_uid').val();
      $.post('/index.php/Home/Center/checkpic', {'pa': pa,"uid":hide_uid}, function(data) {
        /*console.log(data);
        alert(data.length);*/
        for (var i = 0; i < data.length ; i++) {
          var pic_url = data[i]['upload'];
          console.log(pic_url);
          $('#arrox').append('<li><div class="am-gallery-item"><a href="'+pic_url+'"><img style="height:20%" class="am_img animated" src="'+pic_url+'" data-original="'+pic_url+'" data-rel="'+pic_url+'" /></a></div></li>');
          var width=$('#arrox img').eq(0).width();
          $('#arrox img').css('height',width/1.5);


          /*'<li><div class="am-gallery-item"><a href="http://s.amazeui.org/media/i/demos/bing-1.jpg" class=""><img src="http://s.amazeui.org/media/i/demos/bing-1.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/><h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3><div class="am-gallery-desc">2375-09-26</div></a><a href="">删除</a></div></li>'*/

        }
      },'json');
    };
  }
});


                

                /*'<li>
                  <div class="am-gallery-item">
                    <a href="http://s.amazeui.org/media/i/demos/bing-1.jpg" class="">
                      <img src="http://s.amazeui.org/media/i/demos/bing-1.jpg"  alt="远方 有一个地方 那里种有我们的梦想"/>
                      <h3 class="am-gallery-title">远方 有一个地方 那里种有我们的梦想</h3>
                      <div class="am-gallery-desc">2375-09-26</div>
                    </a>
                    <a href="">删除</a>
                  </div>
                </li>'*/