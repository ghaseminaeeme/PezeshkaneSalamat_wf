jQuery(window).on('elementor/frontend/init',function (){
    function pzy_core_load_swiper($scope){
        let swiper = $scope.find('.swiper[data-settings]:not(.custom-init)');
        if (swiper.length){
            let defaultOptions = {
                breakpointsInverse: true,
                observer: true
            };
            let settings_data = swiper.attr('data-settings');
            if (settings_data){
                let settings = JSON.parse(settings_data);
                new Swiper(swiper[0],$.extend({}, defaultOptions, settings));
            }
        }
    }

    elementorFrontend.hooks.addAction( 'frontend/element_ready/pzy_staffs_slider.default', function( $scope ) {pzy_core_load_swiper($scope)} );
    elementorFrontend.hooks.addAction( 'frontend/element_ready/pzy_staff_gallery.default', function( $scope ) {
        let $galleries =  $scope.find('.pzy-gallery');
        $galleries.each(function (i, gallery) {
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

    } );

})