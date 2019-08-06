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
$(`.charWrap-info [data-attr=${attribute}]`).html(function(index, string){
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
	renderText(".charWrap-info [data-info=level]", lvl);
	renderText(".charWrap-info [data-info=toLvlUp]", toLvlUp);
	renderText(".charWrap-info [data-info=freeAttributes]", freeAttributes);
	renderText(".charWrap-info [data-info=experience]", 0);
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