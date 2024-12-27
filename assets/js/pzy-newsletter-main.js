$(document).ready(function (){
    $('.newsletter-form').on('submit',function (e){
        e.preventDefault();
        let data = $(this).serialize();
        let messages_box = $(this).find('.pzy-newsletter-message');
        data += "&action=pzy_register_newsletter&security=" + pzy_newsletter_obj.security
        $.ajax({
            type:'post',
            url:pzy_newsletter_obj.ajax_url,
            dataType:'json',
            data:data,
            success:function (response){
                let message_html;
                if (messages_box) {
                    let messages_html = '';
                    if (response.success) {
                        message_html = `<div class="pzy-success-message">${response.data}</div>`;
                    } else {
                        message_html = `<div class="pzy-error-message">${response.data}</div>`;
                    }
                    messages_box.html(message_html);
                    messages_box.removeClass('pzy-hide');
                }

            }
        });
    })
})