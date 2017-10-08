//直接跳，美观性不足，head.jsp		var ads=${size};  其他不变
function autoplay(){
	if(fx=='right'){
		play_right();
	}else{
		play_left();
	}
}
function play_right(){
	clearTimeout(timeoutProcess);
	if(nowindex==ads-1) $("#indexflash").css("left","0px");
	fx="right";
	playad(nowindex<ads-1?nowindex+1:0);
}
function playad(index){
	if(ads==0)return false;
	//fly.start
	 var k=-((index)*367);
	 $("#indexflash").css("left",k+"px")
	 //$("#indexflash").animate({ left:k) },"slow"); 
	 var nextindex=index<ads-1?index+1:0;
	 nowindex=index;
	 if(nextindex==nowindex)return false;
	 
	 timeoutProcess =setTimeout(autoplay,3000);
}
