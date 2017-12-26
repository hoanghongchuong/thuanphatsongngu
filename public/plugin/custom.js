$(document).ready(function(){
	$('.click_model').on('click', function(){
		var id = parseInt($(this).data('id'));
		$.ajax({
			url: baseUrl() + "/getproduct/ajax",
			type: 'POST',
			data: {
				id: id,
				_token : window.token
			},
			success: function(res){
				if(res){
					res.html();
					
				}
			}
		});
	});
});