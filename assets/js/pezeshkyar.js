jQuery(document).ready(function ($) {
    $('#preloader').hide();
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

    $('#mobile-menu-wrapper').click(function (event) {
        // Check if the clicked element is not within the mobile menu or its wrapper
        if (!$(event.target).closest('#mobile-menu-wrapper .mobile-menu').length) {
            $('body').removeClass('pzy-overflow-hidden');
            $('#mobile-menu-wrapper').addClass('pzy-hide');
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
        el.closest('.woocommerce').removeClass('pzy-show-navigation')
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

})

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
            console.log('edit mode isn\'t active');
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
            console.log($(form).classList)
            $(form).on('show_variation', function (event, variation) {
                console.log(variation);
                let el = $(this);
                if (variation.price_html) {
                    el.parent().parent().find('.pzy_product_after_introduction .pzy-variation-price').html(variation.price_html);
                }
            })
        });
    });
})