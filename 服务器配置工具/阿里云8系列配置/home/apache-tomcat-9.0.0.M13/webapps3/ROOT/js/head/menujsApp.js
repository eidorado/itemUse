// JavaScript Document
//第一张和最后一张信息相同

function playad(index){
	if(ads==0)return false;
	 $("#indexflash").animate({ left:-((index+1)*267) },"slow"); 
	 var nextindex;
	 if(fx=="right"){
		 nextindex=index<ads-1?index+1:0;
	 }else if(fx=="left"){
		 nextindex=index<=0?ads-1:index-1;
	 }
	 nowindex=index;
	 if(nextindex==nowindex)return false;
	 
	 timeoutProcess =setTimeout(autoplay,3000);
}
function play_left(){
	clearTimeout(timeoutProcess);
	fx="left";
	if(nowindex==0) $("#indexflash").css("left",-((ads+1)*267)+"px");
	playad(nowindex<=0?ads-1:nowindex-1);
}
function play_right(){
	clearTimeout(timeoutProcess);
	if(nowindex==ads-1) $("#indexflash").css("left","0px");
	fx="right";
	playad(nowindex<ads-1?nowindex+1:0);
}

function autoplay(){
	if(fx=='right'){
		play_right();
	}else{
		play_left();
	}
}
