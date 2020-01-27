$(document).ready(function(){


	
	$('.Lista .catal[catt="all"]').addClass('catal-active');

	// Filtrando productos
	$('.catal').click(function(){
		var catProduct = $(this).attr('catt');
		console.log(catProduct);


		$('.catal').removeClass('catal-active');
		$(this).addClass('catal-active');

		// Ocultar Productos
		$('.producto').css('transform', 'scale(0)');
		function hideProduct(){
			$('.producto').hide();
		} setTimeout(hideProduct,400);

		// Mostrar Productos
		function showProduct(){
			$('.producto[catt="'+catProduct+'"]').show();
			$('.producto[catt="'+catProduct+'"]').css('transform', 'scale(1)');
		} setTimeout(showProduct,400);
	});

	// Mostrar  Todos Productos
	$('.catal[catt="all"]').click(function(){
		function showAll(){
			$('.producto').show();
			$('.producto').css('transform', 'scale(1)');
		} setTimeout(showAll,400);
	});
});