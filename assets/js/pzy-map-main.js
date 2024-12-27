jQuery(window).on('elementor/frontend/init', function () {
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_map.default', function ($scope) {
        $scope.find('.mapir').each(function (i, mapir) {
            let map_settings = $(mapir).attr('data-settings');
            let app = new Mapp(JSON.parse(map_settings));
            app.addLayers();
            if ($(mapir).is('[data-marker]')) {
                let marker_settings = $(mapir).attr('data-marker');
                let marker = app.addMarker(JSON.parse(marker_settings));

                if ($(mapir).is('[data-popup]')) {
                    let popup = JSON.parse($(mapir).attr('data-popup'));
                    marker.bindPopup(popup['content'], popup['options']).openPopup();
                }
            }

        })
    })
})