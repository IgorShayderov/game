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
$(`.charWrap__mainInfo_attributes [data-info=${attribute}]`).html(function(index, string){
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
	renderText(".charWrap__mainInfo_basic-info [data-info=level]", lvl);
	renderText(".charWrap__mainInfo_basic-info [data-info=toLvlUp]", toLvlUp);
	renderText(".charWrap__mainInfo_basic-info [data-info=freeAttributes]", freeAttributes);
	renderText(".charWrap__mainInfo_basic-info [data-info=experience]", 0);
}
// gets random number from range
let rand = function(lowest, highest){
	let range = highest - lowest + 1;
	return lowest + Math.floor(Math.random() * range);
}
//make element disabled
let disable = function(elem){
	elem.setAttribute("disabled", "disabled");
}
return{
	message: message,
	incrAttribute: incrAttribute,
	renderText: renderText,
	renderLvlUp: renderLvlUp,
	rand: rand
}
})();