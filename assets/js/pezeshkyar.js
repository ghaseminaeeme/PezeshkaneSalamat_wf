document.addEventListener("wheel", function (event) {
    if (document.body.classList.contains("pzy-overflow-hidden")) {
        const modalWrapper = document.querySelector(".pzy-modal-wrapper");

        if (modalWrapper && modalWrapper.contains(event.target)) {

            modalWrapper.scrollTop += event.deltaY;

            // Prevent body scroll
            event.preventDefault();
            event.stopPropagation();
        }

    }
}, { passive: false });



jQuery(document).ready(function ($) {
    $(document).on('click','.mobile-menu-list > li.menu-item-has-children a',function (event) {
        let el = $(this);
        if (!$(event.target).closest('.pzy-link-text').length) {
            event.preventDefault();
            el.next('.mobile-categories-list').toggleClass('pzy-shown-submenu');
            el.find('.toggle-menu-item').toggleClass('open-mode');
        }
    })

    $(document).on('change','.mgs-staff-schedule-day input.mgs-break-checkbox[type="checkbox"]',function(){
		let day_box = $(this).closest('.mgs-staff-schedule-day')
		day_box.find('.mgs-time-range.mgs-breeak-time-range').toggleClass('mgs-hide')
		day_box.find('.mgs-time-range.mgs-breeak-time-range select').each(function(){
			$(this).prop('disabled', function (_, val) { return ! val; })
		})
    })
    $(document).on('change','.mgs-checkbox-label input[type="checkbox"]',function(){
        $(this).closest('.mgs-checkbox-label').toggleClass('checked')
    })

    $(document).on('change','input.mgs-img-field-input[type="file"]',function(){
		var input = this;
		var url = $(this).val();
		var preview_items = $(this).closest('.mgs-img-field-preview').find('.mgs-img-field-preview-items');
		var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
		if (preview_items && input.files && input.files[0]&& (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg"))
		 {
			var reader = new FileReader();

			reader.onload = function (e) {

				remove_text = pgw_main_ajax_object.translations.remove_text;
				remove_text = remove_text.replace("%s", abstractFilename(input.files[0].name));

				var preview_items_html = preview_items.html();
				preview_items_html = `<div class="mgs-img-field-preview-item"><img src="${e.target.result}"/><button class="mgs-img-field-remove-button">${remove_text}</button></div>`;
				preview_items.html(preview_items_html);

			//    $('#img').attr('src', e.target.result);
			}
		   reader.readAsDataURL(input.files[0]);

		   $(this).closest('.mgs-img-field-preview').find('input[name="keep_avatar"]').prop('checked',false);
		   $(this).closest('.mgs-img-field-preview').find('input[name="use_default_avatar"]').prop('checked',false);
		}
		else
		{
		//   $('#img').attr('src', '/assets/no_preview.png');
		}
	});

	$(document).on('click','.mgs-img-field-remove-button',function(e){
		e.preventDefault();
		var preview_field = $(this).closest('.mgs-img-field-preview');
		var file_input = preview_field.find('.mgs-img-field-input');
		if(preview_field){
			var preview_items = preview_field.find('.mgs-img-field-preview-items');
			if(preview_items)
				preview_items.html(`<div class="mgs-img-field-upload-button"><h3 class="mgs-upload-main-text">${pgw_main_ajax_object.translations.upload_main_text}</h3><h4 class="mgs-upload-avatar-condition">${pgw_main_ajax_object.translations.upload_avatar_condition}</h4></div>`);
			if(file_input)
				file_input.val('');

			preview_field.find('input[name="keep_avatar"]').prop('checked',false);
			preview_field.find('input[name="use_default_avatar"]').prop('checked',true);


		}
	})

    $('body').append('<div id="cart-popup" style="display:none"></div>');
    
    $(document.body).on('added_to_cart', function(event, fragments, cart_hash, button) {        
        $('.pzy-minicart').each(function(){
            let card_count = $(this).parent().find('.card-count');
            let form = $(this).find('form');
            if (card_count){
                card_count.html(fragments['mgs-minicart-item-count']);
            }
            if(form.length){
                form.replaceWith(fragments['mgs-minicart-content']);
            }else{
                let empty_cart = $(this).find('.pzy-mini-cart__empty-message');                
                if(empty_cart.length){
                    empty_cart.replaceWith(fragments['mgs-minicart-content']);
                }
            }
        });

		var message = 'محصول به سبد خرید افزوده شد.';

		$('#cart-popup').html(message).fadeIn();

		setTimeout(function() {
			$('#cart-popup').fadeOut();
		}, 3000); // Hide after 3 seconds
	});

    $(document).on('click', '.pzy-minicart .remove_from_cart_button', function (e) {
        $('.pzy-minicart:not(".pzy-loading-box")').addClass('pzy-loading-box');

        $(document).ajaxComplete(function (event, xhr, settings) {
            if (settings.url.includes('wc-ajax=remove_from_cart')) {
                // Remove loading class and re-enable the button
                $('.pzy-minicart').removeClass('pzy-loading-box');
            }
        });
    });

    $( 'body' ).on( 'removed_from_cart', function( e, fragments, cart_hash, button ) {
        $('.pzy-minicart form').each(function(){
            let form = $(this);
            let card_count = form.parent().parent().find('.card-count');
            form.replaceWith(fragments['mgs-minicart-content']);
            if (card_count){
                card_count.html(fragments['mgs-minicart-item-count']);
            }
        });
      });


    $('#preloader').hide();
    const postType = pgw_main_ajax_object.post_type;
    if (postType) {
        // Target the search widget form and append the hidden input
        $('.widget_search form').append(
            `<input type="hidden" name="post_type" value="${postType}">`
        );
    }
    /* Start Features */
    /* Modal */
    $('.pzy-open-modal[data-target]').click(function () {
        let el = $(this)
        let target_selector = el.data('target');
        let target = $(target_selector)
        if (target.hasClass('pzy-hide')) {
            // $('body').addClass('pzy-overflow-always-hidden')
            target.removeClass('pzy-hide')
        }
    })

    $('.pzy-modal-wrapper[id]').click(function (event) {
        let elm = $(this);
        let id = elm.attr('id');
        // Check if the clicked element is not within the mobile menu or its wrapper
        if (id && !$(event.target).closest(`#${id} .pzy-modal`).length) {
            // $('body').removeClass('pzy-overflow-always-hidden');
            elm.addClass('pzy-hide');
        }
    });

    $(document).on('click','.pzy-modal-close-button',function (event) {
        event.preventDefault();
        let el = $(this);
        el.closest('.pzy-modal-wrapper').addClass('pzy-hide');
        $('body,.pzy-main-layout').removeClass('pzy-overflow-hidden');

    })

    /* Radio Group Set Active Item */
    $(document).on('change', '.pzy-radio-group input', function () {
        let el = $(this);
        el.closest('.pzy-time-slots').find('.pzy-active').removeClass('pzy-active');
        el.parent().addClass('pzy-active');
    })

    /* Float Input Label */
    $(document).on('input', '.pzy-input-label input', function (e) {
        let value = e.target.value;
        let label = $(this).closest('.pzy-input-label');
        if (value.length > 0) {
            if (!label.is('.pzy-input-full')) {
                label.addClass('pzy-input-full')
            }
        } else {
            if (label.is('.pzy-input-full')) {
                label.removeClass('pzy-input-full')
            }
        }
    });

    /* End Features */

    function initSwiper(slider) {
        let settings = $(slider).attr('data-settings');
        let settingsObject = {};
        if (settings) {
            settingsObject = JSON.parse(settings);
        }

        let defaultOptions = {
            breakpointsInverse: true,
            observer: true
        };
        slider.options = $.extend({}, defaultOptions, settingsObject);

        let swiper = new Swiper(slider, slider.options);
    }

    $('.swiper.pzy-wp-swiper:not(.custom-init)').each(function (i, slider) {
        initSwiper(slider);
    })

    if (window.elementorFrontend ?? false) {
        if (elementorFrontend.hooks) {
            // elementorFrontend.hooks.addAction('frontend/element_ready/widget', function ($scope) {
            //     $scope.find('.swiper:not(.custom-init)').each(function (i, slider) {
            //         initSwiper(slider);
            //     })
            // });
        }

    }

    $('.toggle-menu[data-target]').click(function () {
        let el = $(this)
        let target_selector = el.data('target');
        let target = $(target_selector)
        if (target.hasClass('pzy-hide')) {
            $('body').addClass('pzy-overflow-hidden')
            target.removeClass('pzy-hide')
        }
    })

    $('.mobile-menu-wrapper').click(function (event) {
        // Check if the clicked element is not within the mobile menu or its wrapper
        if (!$(event.target).closest('.mobile-menu-wrapper .mobile-menu').length) {
            $('body').removeClass('pzy-overflow-hidden');
            $(this).addClass('pzy-hide');
        }
    });

    $('.mobile-categories-list a').click(function (event) {
        let el = $(this)
        if (!$(event.target).closest('.pzy-link-text').length) {
            event.preventDefault();
            el.next('ul').toggleClass('show-sub-menu');
            el.find('.toggle-menu-item').toggleClass('open-mode');
        }
    })

    $('.pzy-dropdown-button').click(function (event) {
        event.preventDefault();
        let el = $(this);
        el.next('.pzy-dropdown').toggleClass('pzy-hide');
    })

    $('.pzy-share-article-dropdown-button').click(function () {
        $(this).closest('.pzy-share-article-dropdown-box').toggleClass('pzy-show-dropdown');
    })

    $('.pzy-share-article-dropdown-close').click(function () {
        $(this).closest('.pzy-share-article-dropdown-box').removeClass('pzy-show-dropdown');
    })

    $('.pzy-share-article-copy-box').click(function () {
        let el = $(this);
        let copy_button = el.find('.pzy-share-article-copy-button');
        let share_url = el.find('.pzy-share-article-copy-url').text().trim();

        setTimeout(() => {
            copy_button.css('visibility', 'hidden');
            copy_button.css('opacity', '0');
        }, 5000);

        if (navigator.clipboard) {
            navigator.clipboard.writeText(share_url).then(() => {
                copy_button.css('visibility', 'visible');
                copy_button.css('opacity', '1');
            }).catch(err => {
                console.error('Failed to copy text to clipboard: ', err);
            });
        } else {
            // Fallback for browsers that do not support the Clipboard API
            let textArea = document.createElement("textarea");
            textArea.value = share_url;
            document.body.appendChild(textArea);
            textArea.select();
            try {
                document.execCommand('copy');
                copy_button.css('visibility', 'visible');
                copy_button.css('opacity', '1');
            } catch (err) {
                console.error('Failed to copy text to clipboard: ', err);
            }
            document.body.removeChild(textArea);
        }
    })

    $('.pzy-dropdown-close').click(function (event) {
        event.preventDefault();
        let el = $(this);
        el.closest('.pzy-dropdown').addClass('pzy-hide');
    })

    $('.pzy-wc-gallery:not(.gallery-handled)').each(function (i, gallery) {
        $(gallery).addClass('gallery-handled');
        let main_gallery = $(gallery).find('.pzy-main-gallery');
        let thumbs_gallery = $(gallery).find('.pzy-thumbnail-gallery');
        let pzy_wc_lightbox = $(gallery).parent().find('.pzy-wc-lightbox');
        let large_gallery = pzy_wc_lightbox.find('.pzy-large-gallery');

        if (main_gallery.length && thumbs_gallery.length) {
            let thumbs_swiper = new Swiper(thumbs_gallery[0], {
                loop: true,
                spaceBetween: 10,
                direction: "vertical",
                // centeredSlides: true,
                slidesPerView: 4,
                watchSlidesProgress: true,
                rtl: true,
            });
            let main_swiper = new Swiper(main_gallery[0], {
                spaceBetween: 16,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                thumbs: {
                    swiper: thumbs_swiper,
                },
            });

            let large_swiper = new Swiper(large_gallery[0], {
                spaceBetween: 0,
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
            });

            let main_gallery_slides = $(main_gallery).find('.swiper-slide');
            main_gallery_slides.each((index, slide) => {
                $(slide).on('click', () => {
                    large_swiper.slideToLoop(index);
                    pzy_wc_lightbox.removeClass('pzy-hide');
                })
            })
        }
    })

    $('.pzy-gallery').each(function (i, gallery) {
        let main_gallery = $(gallery).find('.pzy-main-gallery .swiper');
        let thumbs_gallery = $(gallery).find('.pzy-thumbnail-gallery .swiper');
        // let pzy_lightbox = $(gallery).next('.pzy-lightbox');
        // let large_gallery = pzy_lightbox.find('.pzy-large-gallery .swiper');

        if (main_gallery.length) {
            let thumbs_swiper;
            if (thumbs_gallery.length) {
                let thumbnails_settings = $(thumbs_gallery[0]).attr('data-settings');
                let thumbnails_options = {};
                if (thumbnails_settings) {
                    thumbnails_options = JSON.parse(thumbnails_settings);
                }

                thumbs_swiper = new Swiper(thumbs_gallery[0], thumbnails_options);
            }

            let main_settings = $(main_gallery[0]).attr('data-settings');
            let main_options = {};
            if (main_settings) {
                main_options = JSON.parse(main_settings);
            }

            if (thumbs_gallery.length) {
                main_options.thumbs = {
                    swiper: thumbs_swiper,
                }
            }

            let main_swiper = new Swiper(main_gallery[0], main_options);

            // let large_swiper = new Swiper(large_gallery[0],{
            //     spaceBetween: 0,
            //     navigation: {
            //         nextEl: ".swiper-button-next",
            //         prevEl: ".swiper-button-prev",
            //     },
            // });
            //
            // let main_gallery_slides = $(main_gallery).find('.swiper-slide');
            // main_gallery_slides.each((index,slide) => {
            //     $(slide).on('click', () => {
            //         large_swiper.slideToLoop(index);
            //         pzy_lightbox.removeClass('pzy-hide');
            //     })
            // })
        }
    })


    $('.pzy-close-wc-lightbox').on('click', function () {
        let el = $(this);
        el.closest('.pzy-wc-lightbox').addClass('pzy-hide');
        el.addClass('close-handled-before')
    });

    $('.variations_form').on('show_variation', function (event, variation) {
        let el = $(this);
        el.addClass('form-handled')
        if (variation.price_html) {
            el.parent().parent().find('.pzy_product_after_introduction .pzy-variation-price').html(variation.price_html);
        }
    });

    $(document).on('click', '.pzy-change-quantity-plus', function (event) {
        event.preventDefault();
        let el = $(this);
        let quantity_input = el.parent().find('.qty');
        let minus_button = el.parent().find('.pzy-change-quantity-minus');
        let step = 1;
        if (quantity_input.is('[step]')) {
            step = parseInt(quantity_input.attr('step'));
        }
        if (quantity_input.length) {
            let quantity_value = 1;
            if (quantity_input.val().length) {
                quantity_value = quantity_input.val();
            }
            let quantity = parseInt(quantity_value) + step;
            if ((quantity_input.is('[max]') && quantity_input.attr('max').length && quantity > parseInt(quantity_input.attr('max'))) || (quantity_input.is('[min]') && quantity_input.attr('min').length && quantity < quantity_input.attr('min'))) {
                return;
            }

            let old_quantity = quantity_input.val();
            quantity_input.val(quantity);
            if (old_quantity != quantity)
                quantity_input.trigger('change');


            let can_plus = true;
            if (quantity_input.is('[max]') && quantity_input.attr('max').length && quantity + step > parseInt(quantity_input.attr('max'))) {
                can_plus = false;
            }
            let can_minus = true;
            if (quantity_input.is('[min]') && quantity_input.attr('min').length && quantity - step < parseInt(quantity_input.attr('min'))) {
                can_minus = false;
            }

            el.prop('disabled', !can_plus);
            minus_button.prop('disabled', !can_minus);
        }
    })

    $(document).on('click', '.pzy-change-quantity-minus', function (event) {
        event.preventDefault();
        let el = $(this);
        let quantity_input = el.parent().find('.qty');
        let plus_button = el.parent().find('.pzy-change-quantity-plus');
        let step = 1;
        if (quantity_input.is('[step]')) {
            step = parseInt(quantity_input.attr('step'));
        }
        if (quantity_input.length) {
            let quantity_value = 1;
            if (quantity_input.val().length) {
                quantity_value = quantity_input.val();
            }
            let quantity = parseInt(quantity_value) - step;
            if ((quantity_input.is('[max]') && quantity_input.attr('max').length && quantity > parseInt(quantity_input.attr('max'))) || (quantity_input.is('[min]') && quantity_input.attr('min').length && quantity < quantity_input.attr('min'))) {
                return;
            }

            let old_quantity = quantity_input.val();
            quantity_input.val(quantity);
            if (old_quantity != quantity)
                quantity_input.trigger('change');

            let can_plus = true;
            if (quantity_input.is('[max]') && quantity_input.attr('max').length && quantity + step > parseInt(quantity_input.attr('max'))) {
                can_plus = false;
            }
            let can_minus = true;
            if (quantity_input.is('[min]') && quantity_input.attr('min').length && quantity - step < parseInt(quantity_input.attr('min'))) {
                can_minus = false;
            }

            el.prop('disabled', !can_minus);
            plus_button.prop('disabled', !can_plus);

        }
    })

    $('.pzy-change-quantity-plus').each(function () {
        let el = $(this);
        let quantity_input = el.parent().find('.qty');
        updatePlusButtonStatus($(this));
    });

    $('.pzy-change-quantity-minus').each(function () {
        updateMinusButtonStatus($(this));
    });

    $('.qty').on('input', function () {
        let el = $(this);
        let minus_button = el.parent().find('.pzy-change-quantity-minus');
        let plus_button = el.parent().find('.pzy-change-quantity-plus');
        if (minus_button.length)
            updateMinusButtonStatus(minus_button);
        if (plus_button.length)
            updatePlusButtonStatus(plus_button);
    });

    $('.pzy-toggle-navigation').click(function (e) {
        e.preventDefault();
        let el = $(this);
        el.closest('.woocommerce').toggleClass('pzy-show-navigation')

    });

    $('.pzy-close-navigation-modal').click(function (e) {
        e.preventDefault();
        let el = $(this);
        el.closest('.woocommerce').removeClass('pzy-show-navigation');
        $('body,.pzy-main-layout').removeClass('pzy-overflow-hidden');
    })

    // $('.pzy-switch-register').click(function (e) {
    //     e.preventDefault();
    //     $('.pzy-wc-login').addClass('pzy-hide');
    //     $('.pzy-wc-register').removeClass('pzy-hide');
    // })

    $('#pzy-orderby').on('change', function () {
        let form = $(this).closest('form#pzy-sort-posts');
        form.find('input[name="paged"]').val(1)
        form.submit();
    })


    function updatePlusButtonStatus(el) {
        let quantity_input = el.parent().find('.qty');
        let minus_button = el.parent().find('.pzy-change-quantity-minus');
        let step = 1;
        if (quantity_input.is('[step]')) {
            step = parseInt(quantity_input.attr('step'));
        }
        if (quantity_input.length) {
            let quantity = 1;
            if (quantity_input.val().length) {
                quantity = parseInt(quantity_input.val());
            } else {
                quantity_input.val(1);
            }

            let can_plus = true;
            if (quantity_input.is('[max]') && quantity_input.attr('max').length && quantity + step > parseInt(quantity_input.attr('max'))) {
                can_plus = false;
            }
            let can_minus = true;
            if (quantity_input.is('[min]') && quantity_input.attr('min').length && quantity - step < parseInt(quantity_input.attr('min'))) {
                can_minus = false;
            }

            el.prop('disabled', !can_plus);
            minus_button.prop('disabled', !can_minus);
        }
    }

    function updateMinusButtonStatus(el) {
        let quantity_input = el.parent().find('.qty');
        let plus_button = el.parent().find('.pzy-change-quantity-plus');
        let step = 1;
        if (quantity_input.is('[step]')) {
            step = parseInt(quantity_input.attr('step'));
        }
        if (quantity_input.length) {
            let quantity = 1;
            if (quantity_input.val().length) {
                quantity = parseInt(quantity_input.val());
            } else {
                quantity_input.val(1);
            }

            let can_plus = true;
            if (quantity_input.is('[max]') && quantity_input.attr('max').length && quantity + step > parseInt(quantity_input.attr('max'))) {
                can_plus = false;
            }
            let can_minus = true;
            if (quantity_input.is('[min]') && quantity_input.attr('min').length && quantity - step < parseInt(quantity_input.attr('min'))) {
                can_minus = false;
            }

            el.prop('disabled', !can_minus);
            plus_button.prop('disabled', !can_plus);

        }
    }


    $('.pzy-mega-menu').on('mouseenter', function () {
        let el = $(this);
        let has_active_item = el.find('.pzy-mega-menu-items .pzy-mega-menu-item.pzy-active-mega-item').length > 0;
        if (!has_active_item) {
            let first_item = el.find('.pzy-mega-menu-items .pzy-mega-menu-item').first();
            if (first_item) {
                first_item.addClass('pzy-active-mega-item');

                el.find('.pzy-mega-menu-contents .pzy-mega-menu-content.pzy-active-mega-content').removeClass('pzy-active-mega-content');
                if (first_item.is('[data-content]')) {
                    $(first_item.data('content')).addClass('pzy-active-mega-content')
                }
            }
        }
    })

    $('.pzy-mega-menu').on('mouseleave', function () {
        let el = $(this);
        el.find('.pzy-mega-menu-items .pzy-mega-menu-item.pzy-active-mega-item').removeClass('pzy-active-mega-item');
        el.find('.pzy-mega-menu-contents .pzy-mega-menu-content.pzy-active-mega-content').removeClass('pzy-active-mega-content');
    })

    $('.pzy-mega-menu .pzy-mega-menu-items .pzy-mega-menu-item').on('mouseenter', function () {
        let el = $(this);
        let mega_menu = el.closest('.pzy-mega-menu');
        if (mega_menu) {
            mega_menu.find('.pzy-mega-menu-items .pzy-mega-menu-item.pzy-active-mega-item').removeClass('pzy-active-mega-item');
            mega_menu.find('.pzy-mega-menu-contents .pzy-mega-menu-content.pzy-active-mega-content').removeClass('pzy-active-mega-content');
            el.addClass('pzy-active-mega-item');
            if (el.is('[data-content]')) {
                $(el.data('content')).addClass('pzy-active-mega-content')
            }
        }
    })

    /* otp */
    $(document).on('submit','.pzy-otp-form-step-1',function(e){
		e.preventDefault();
		let form = $(this);
        let data = $(this).serialize();
		let wrapper = form.closest('.pzy-otp-wrapper');

		if(form.is('.pzy-loading-form')){
			return;
		}

		data += "&action=pzy_request_otp_token&security=" + pgw_main_ajax_object.security;
		form.addClass('pzy-loading-form');
		$.ajax({
			type:'post',
            url:pgw_main_ajax_object.ajax_url,
            dataType:'json',
			data:data,
			success:function(response){
				if(!response.success){
					let errors_box = form.find('.pzy-otp-form-errors');
					if(response.data){

						let errors_html = `<div class='pzy-otp-form-error'>${response.data}</div>`;
						if(!errors_box.length){

							let title_elm = form.find('.pzy-otp-form-title');
							if(title_elm.length){
								errors_html = `<div class='pzy-otp-form-errors'>${errors_html}</div>`;
								$(errors_html).insertAfter(title_elm);
							}
						}else{
							errors_box.html(errors_html);
						}
					}

				}else if(response.success && response?.data?.verify_code){
					form.replaceWith(response.data.verify_code);
					if(wrapper){
						let timerElement = wrapper.find('.pzy-form-otp-timer[data-remain]');
						startTimer(timerElement);
					}
				}
			},
			complete: function(){
				form.removeClass('pzy-loading-form');
			}
		});
	});

	$('.pzy-otp-wrapper').on('click','.pzy-otp-form-resend-button',function(e){
		e.preventDefault();

		let resend_button = $(this);
		if(resend_button.is('.pzy-loading-button')){
			return;
		}

		let form = $(this).closest('.pzy-otp-form-step-2');
		let wrapper = form.closest('.pzy-otp-wrapper');
		if(form){
			let otp_input = form.find('input[name="otp_input"]');
			if(otp_input){
				form.find('input[name="otp_verification_code"]').val('');
				data = "otp_input=" + otp_input.val() + "&action=pzy_request_resend_otp_token&security=" + pgw_main_ajax_object.security;
				resend_button.addClass('pzy-loading-button');
				$.ajax({
					type:'post',
					url:pgw_main_ajax_object.ajax_url,
					dataType:'json',
					data:data,
					success:function(response){
						if(response.success && response?.data?.verify_code){
							form.replaceWith(response.data.verify_code);
							if(wrapper){
								let timerElement = wrapper.find('.pzy-form-otp-timer[data-remain]');
								startTimer(timerElement);
							}
						}
					},
					complete:function(){
						resend_button.removeClass('pzy-loading-button');
					}
				})

			}
		}
	});

	$(document).on('submit','.pzy-otp-form-step-2',function(e){
		e.preventDefault();
		let form = $(this);
        let data = $(this).serialize();
		let wrapper = form.closest('.pzy-otp-wrapper');

		if(form.is('.pzy-loading-form')){
			return;
		}


		data += "&action=pzy_verify_otp_token&security=" + pgw_main_ajax_object.security;
		form.addClass('pzy-loading-form');
		$.ajax({
			type:'post',
            url:pgw_main_ajax_object.ajax_url,
            dataType:'json',
			data:data,
			success:function(response){
				if(response.success){
					window.location.reload(true);
				}else{
					let errors_box = form.find('.pzy-otp-form-errors');
					if(response.data){

						let errors_html = `<div class='pzy-otp-form-error'>${response.data}</div>`;
						if(!errors_box.length){

							let title_elm = form.find('.pzy-otp-form-title');
							if(title_elm.length){
								errors_html = `<div class='pzy-otp-form-errors'>${errors_html}</div>`;
								$(errors_html).insertAfter(title_elm);
							}
						}else{
							errors_box.html(errors_html);
						}
					}
				}
			},
			complete: function(){
				form.removeClass('pzy-loading-form');
			}
		});
	})

	$(document).on('click','.pzy-open-otp-modal[data-otp]',function(e){
		e.preventDefault();
		$('#pzy-otp-modal').removeClass('pzy-hide');
	});

	$(document).on('click','.pzy-otp-modal-close-button',function(e){
		e.preventDefault();
		let modal = $(this).closest('.pzy-otp-modal');
		if(modal && !modal.is('.pzy-hide')){
			modal.addClass('pzy-hide');
		}
	});

    $(document).on('click','button.pzy-staff-cancel-reserve[data-id]:not(.loading)',function(){
		let button = $(this);
		let id = parseInt(button.attr('data-id'));
		button.addClass('loading');
		$.ajax({
			type:'POST',
			url:pgw_main_ajax_object.ajax_url,
			data: {
				reservation_id: id,
				action: 'pzy_staff_cancel_my_reservation'
			},
			dataType:'json',
			success:function(response){
				window.location.reload();
			},
			complete:function(){
				button.removeClass('loading');
			}
		})
	})

    $(document).on('click','button.pzy-customer-cancel-reserve[data-id]:not(.loading)',function(){
		let button = $(this);
		let id = parseInt(button.attr('data-id'));
		button.addClass('loading');
		$.ajax({
			type:'POST',
			url:pgw_main_ajax_object.ajax_url,
			data: {
				reservation_id: id,
				action: 'pzy_customer_cancel_my_reservation'
			},
			dataType:'json',
			success:function(response){
				window.location.reload();
			},
			complete:function(){
				button.removeClass('loading');
			}
		})
	})

    function abstractFilename(filename, maxLength = 15) {
		if (filename.length <= maxLength) return filename;

		const extIndex = filename.lastIndexOf(".");
		const namePart = filename.slice(0, extIndex);
		const extension = filename.slice(extIndex);

		const visibleChars = Math.floor((maxLength - 3) / 2);
		return `${namePart.slice(0, visibleChars)}...${namePart.slice(-visibleChars)}${extension}`;
	}

})

function startTimer(timerElement) {
    let remainingTime = parseInt(timerElement.attr('data-remain'));


    function formatTime(seconds) {
        const minutes = Math.floor(seconds / 60);
        const secs = seconds % 60;
        return `${minutes < 10 ? '0' : ''}${minutes}:${secs < 10 ? '0' : ''}${secs}`;
    }

    function updateTimer() {
        if (remainingTime > 0) {
            remainingTime--;
            timerElement.html(formatTime(remainingTime));
        } else {
            clearInterval(timerInterval);
			let resend = '<button type="button" class="pzy-otp-form-resend-button">ارسال مجدد کد برای شما</button>';
            timerElement.closest('.pzy-otp-form-time-box').html(resend);
        }
    }

    // Initial display of the timer
    timerElement.textContent = formatTime(remainingTime);

    // Update the timer every second
    const timerInterval = setInterval(updateTimer, 1000);
}

jQuery(window).on('elementor/frontend/init', function () {
    function load_swiper($scope) {
        let swiper = $scope.find('.swiper[data-settings]:not(.custom-init)');
        if (swiper.length) {
            let defaultOptions = {
                breakpointsInverse: true,
                observer: true
            };
            let settings_data = swiper.attr('data-settings');
            if (settings_data) {
                let settings = JSON.parse(settings_data);
                new Swiper(swiper[0], $.extend({}, defaultOptions, settings));
            }
        }
    }

    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_products_slider.default', function ($scope) {
        load_swiper($scope)
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_services_list.default', function ($scope) {
        load_swiper($scope)
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_posts_slider.default', function ($scope) {
        load_swiper($scope)
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_main_slider.default', function ($scope) {
        load_swiper($scope)
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_links_slider.default', function ($scope) {
        load_swiper($scope)
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_elementor_slider.default', function ($scope) {
        load_swiper($scope);

        if (elementorFrontend.isEditMode()) {
            setTimeout(function () {
                elementor.channels.editor.trigger('refresh:preview');
                elementor.channels.editor.trigger('render:css');
            }, 500); // 500ms delay, adjust as needed
        } else {
            // console.log('edit mode isn\'t active');
        }
    });
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_reviews_slider.default', function ($scope) {
        load_swiper($scope);
    });

    elementorFrontend.hooks.addAction('frontend/element_ready/woocommerce-product-images.default',function ($scope){
        $scope.find('.pzy-wc-gallery:not(.gallery-handled)').each(function (i, gallery) {
            $(gallery).addClass('gallery-handled');
            let main_gallery = $(gallery).find('.pzy-main-gallery');
            let thumbs_gallery = $(gallery).find('.pzy-thumbnail-gallery');
            let pzy_wc_lightbox = $(gallery).parent().find('.pzy-wc-lightbox');
            let large_gallery = pzy_wc_lightbox.find('.pzy-large-gallery');

            if (main_gallery.length && thumbs_gallery.length) {
                let thumbs_swiper = new Swiper(thumbs_gallery[0], {
                    loop: true,
                    spaceBetween: 10,
                    direction: "vertical",
                    // centeredSlides: true,
                    slidesPerView: 4,
                    watchSlidesProgress: true,
                    rtl: true,
                });
                let main_swiper = new Swiper(main_gallery[0], {
                    spaceBetween: 16,
                    navigation: {
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                    },
                    thumbs: {
                        swiper: thumbs_swiper,
                    },
                });

                let large_swiper = new Swiper(large_gallery[0], {
                    spaceBetween: 0,
                    navigation: {
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                    },
                });

                let main_gallery_slides = $(main_gallery).find('.swiper-slide');
                main_gallery_slides.each((index, slide) => {
                    $(slide).on('click', () => {
                        large_swiper.slideToLoop(index);
                        pzy_wc_lightbox.removeClass('pzy-hide');
                    })
                })
            }
        })

        feather.replace();

        $scope.find('.pzy-close-wc-lightbox:not(.close-handled-before)').each(function(i,box){
            $(box).on('click', function () {
                let el = $(this);
                el.closest('.pzy-wc-lightbox').addClass('pzy-hide');
            })
        });
    })

    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_product_information.default',function ($scope){
        $scope.find('.variations_form:not(.form-handled)').each(function (i,form){
            $(form).on('show_variation', function (event, variation) {
                let el = $(this);
                if (variation.price_html) {
                    el.parent().parent().find('.pzy_product_after_introduction .pzy-variation-price').html(variation.price_html);
                }
            })
        });
    });
})