window.addEventListener("load", function (){
	player.renderAll();

	$("#char_button").on("click", (function(event){
		$('#main').stop(true,true).slideUp(400);
		$('#forShop').stop(true,true).slideUp(400);
		$('#character').stop(true,true).slideDown(400);
	}));

	$("#map_button").on("click", (function(event){
		$('#character').stop(true,true).slideUp(400);
		$('#forShop').stop(true,true).slideUp(400);
		$('#main').stop(true,true).slideDown(400);
	}));

	$("#shop_button").on("click", (function(event){
		$('#main').stop(true,true).slideUp(400);
		$('#character').stop(true,true).slideUp(400);
		$('#forShop').stop(true,true).slideDown(400);
	}));

	 $(".info").on("click", "input[id]",function(event){
	 	switch($(event.target).attr("id")){
	 		case "str":
	 			player.addAttribute("strength");
	 		break;
	 		case "end":
	 			player.addAttribute("endurance");
	 		break;
	 		case "vit":
	 			player.addAttribute("vitality");
	 		break;
	 	}
	 });
	 let i = 0;
	 $.each(items, (function(key, value){
	 	i++;
	 	$(`#forShop .item:nth-child(${i})`).css("background-image", `${value.params.url}`);
	 }));
	 // $("#forShop .item").
	 // $("#forShop .description").
});
