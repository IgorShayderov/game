let gameSystem = (function(){
// сообщение в окошке SystemMessageWindow
let message = function(message){
	if ($("#systemMessageWindow span").length === 3){
		$("#systemMessageWindow span").first().remove();
		$("#systemMessageWindow br").first().remove();
	}
	$("#systemMessageWindow").append(`<br><span>${message}</span>`);
}
//визуально добавляет атрибут персоонажу
let incrAttribute = function(attribute){
$(`.info [dataAttr=${attribute}]`).html(function(index, string){
let int = parseInt(string);
return int += 1;
});
}
// передает значение в dom-элемент
let renderText = function(DOMelement, text){
	$(DOMelement).html(text);
}
//
let renderLvlUp = function(lvl, toLvlUp, freeAttributes){
	renderText(".info [dataInfo=level]", lvl);
	renderText(".info [dataInfo=toLvlUp]", toLvlUp);
	renderText(".info [dataInfo=freeAttributes]", freeAttributes);
	renderText(".info [dataInfo=experience]", 0);
}
// gets random number from range
let rand = function(lowest, highest){
	let range = highest - lowest + 1;
	return lowest + Math.floor(Math.random() * range);
}
return{
	message: message,
	incrAttribute: incrAttribute,
	renderText: renderText,
	renderLvlUp: renderLvlUp,
	rand: rand
}
})();