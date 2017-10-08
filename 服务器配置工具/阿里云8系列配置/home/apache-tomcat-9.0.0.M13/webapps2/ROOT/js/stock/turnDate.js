/*string date 转特定格式*/
function validationDate(str){
	var dat="";
	if(str){
		dat=str.substring(0,10);
	}
	return dat;
}