window.onload = function (){


	$("#char_button").click(function(event){
		$('#character').stop(true,true).slideDown(400);
		$('#map').stop(true,true).slideUp(400);
		$('#for_shop').stop(true,true).slideUp(400);
	});

	$("#map_button").click(function(event){
		$('#map').stop(true,true).slideDown(400);
		$('#character').stop(true,true).slideUp(400);
		$('#for_shop').stop(true,true).slideUp(400);
	});

	$("#shop_button").click(function(event){
		$('#for_shop').stop(true,true).slideDown(400);
		$('#map').stop(true,true).slideUp(400);
		$('#character').stop(true,true).slideUp(400);
	});
}