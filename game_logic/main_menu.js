window.addEventListener("load", function (){
	player.renderAll();

	$(".panel-charButton").on("click", (function(event){
		$(".mainWrap").stop(true,true).slideUp(400);
		$(".shopWrap").stop(true,true).slideUp(400);
		$(".charWrap").stop(true,true).slideDown(400);
	}));

	$(".panel-mapButton").on("click", (function(event){
		$(".charWrap").stop(true,true).slideUp(400);
		$(".shopWrap").stop(true,true).slideUp(400);
		$(".mainWrap").stop(true,true).slideDown(400);
	}));

	$(".panel-shopButton").on("click", (function(event){
		$(".mainWrap").stop(true,true).slideUp(400);
		$(".charWrap").stop(true,true).slideUp(400);
		$(".shopWrap").stop(true,true).slideDown(400);
	}));

	$(".panel-menuToggle").on("click", function(){
		$(".panel-menuWrap").slideToggle(300, function(){
			if ($(this).css("display") === "none") {
				$(this).removeAttr("style");
			}
		});
	});

	$(".mainWrap").stop(true,true).slideUp(400);
	$(".battleWrap").stop(true,true).slideDown(400);

	 $(".charWrap-info").on("click", "input[id]",function(event){
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
