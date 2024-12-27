$(document).ready(function () {
    $(document).on('click', '.pzy-card-button', function () {
        $(this).parent().find('.pzy-minicart').toggleClass('pzy-hide')
    })

    $(document).on('change', '.pzy-minicart form', function (e) {
        e.preventDefault();

        let form = $(this);
        let form_data = form.serialize();
        form_data += `&action=pzy_update_mini_cart&nonce=${pzy_mini_crt_obj.security}`;

        $.ajax({
            type: 'POST',
            url: pzy_mini_crt_obj.ajax_url,
            dataType: 'json',
            data: form_data,
            beforeSend: function() {
				$('.pzy-minicart:not(.pzy-loading-box)').each(function(index){
					let minicart = $(this);
					minicart.addClass('pzy-loading-box');
				});
			},
            success: function (response) {
                if (response.success) {
                    let card_count = form.parent().parent().find('.card-count');
                    form.replaceWith(response.data.cart_content)
                    if (card_count){
                        card_count.html(response.data.count)
                    }
                }
            },
            complete: function() {
				$('.pzy-minicart.pzy-loading-box').each(function(index){
					let minicart = $(this);
					minicart.removeClass('pzy-loading-box');
				});
			}
        });

    })
})