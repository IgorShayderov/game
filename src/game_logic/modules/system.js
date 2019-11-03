export * from "./system";

// сообщение в окошке SystemMessageWindow
export let message = function(message){
	if (document.querySelectorAll("#systemMessageWindow > div").length === 3){
		document.querySelector("#systemMessageWindow > div:first-child").remove();
	}
	document.querySelector("#systemMessageWindow").appendChild(document.createElement("div"));
	document.querySelector("#systemMessageWindow > div:last-child").innerHTML = `${message}`;
}
//визуально добавляет атрибут персоонажу
export let incrAttribute = function(attribute){
	document.querySelector(`.charWrap__mainInfo_attributes [data-info=${attribute}]`).html(function(index, string){
	let int = parseInt(string);
	return int += 1;
});
}
// передает значение в dom-элемент
export let renderText = function(DOMelement, text){
	document.querySelector(DOMelement).html(text);
}
//
export let renderLvlUp = function(lvl, toLvlUp, freeAttributes){
	renderText(".charWrap__mainInfo_basic-info [data-info=level]", lvl);
	renderText(".charWrap__mainInfo_basic-info [data-info=toLvlUp]", toLvlUp);
	renderText(".charWrap__mainInfo_basic-info [data-info=freeAttributes]", freeAttributes);
	renderText(".charWrap__mainInfo_basic-info [data-info=experience]", 0);
}
// gets random number from range
export let rand = function(lowest, highest){
	let range = highest - lowest + 1;
	return lowest + Math.floor(Math.random() * range);
}
//make element disabled
export let disable = function(elem){
	elem.setAttribute("disabled", "disabled");
}