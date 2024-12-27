jQuery(window).on('elementor/frontend/init', function () {
    let pzy_time_offset = new persianDate().zone();

    function updateDividers($scope) {
        const $services = $scope.find('.pzy-services:not(.pzy-hide)');
        $services.each(function (s, service) {
            let $service = $(service);
            let $category_buttons = $service.find('.pzy-staffs-schedules-category-button');
            $category_buttons.removeClass('no-divider');

            let previousTop = $category_buttons.first().offset().top;
            let previousLeft = $category_buttons.first().offset().left;
            $category_buttons.each(function (index, item) {

                let $currentItem = $(item);
                let currentTop = $currentItem.offset().top;
                let currentLeft = $currentItem.offset().left;

                const isNewRow = currentTop > previousTop || (currentTop === previousTop && currentLeft > previousLeft);

                if (isNewRow) {
                    $($category_buttons.get(index - 1)).addClass('no-divider');
                }

                previousTop = currentTop;
                previousLeft = currentLeft;
            });

            // Ensure the last item in the last row does not have a divider
            $category_buttons.last().addClass('no-divider');
        });
    }

    function reloadStaffs(schedule_box) {
        let service_type = schedule_box.find('input[name="service_type"]').val();
        let service_date = schedule_box.find('input[name="service_date"]').val();

        if (!service_type.length) {
            alert('نوع سرویس را انتخاب کنید')
        }

        if (!service_date.length) {
            alert('ابتدا باید تاریخ را مشخص کنید.')
        }

        let list_box = schedule_box.find('.pzy-staffs-schedule-staffs-list');

        if (!list_box) {
            return;
        }

        if (!service_type.length) {
            alert('ابتدا باید نوع سرویس را مشخص کنید.')
        }

        let old_list_html = list_box.html();

        let staffs_per_page = schedule_box.attr('data-count');
        let page = schedule_box.attr('data-page');

        list_box.html('<div class="lds-spinner"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>');
        $.ajax({
            type: 'post',
            url: pzy_staffs_schedule.ajax_url,
            data: {
                service_type,
                service_date,
                action: 'staffs_schedule_list',
                security: pzy_staffs_schedule.security,
                staffs_per_page,
                page
            },
            success: function (response) {
                list_box.html(response)
            },
            error: function () {
                list_box.html(old_list_html)
            }
        });

    }


    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_staffs_schedule.default', function ($scope) {
        jQuery(window).on('resize load', function () {
            updateDividers($scope);
        });

        $scope.on('click', '.pzy-request-staff-button[data-staff]', function (event) {
            event.preventDefault();
            let el = $(this);
            let wrapper = el.closest('.pzy-staffs-schedule-box');
            let service_type = wrapper.find('input[name="service_type"]').val();
            let service_date = wrapper.find('input[name="service_date"]').val();
            let service_date_offset = new persianDate().zone();
            let staff = el.data('staff');


            if (service_date.length > 0) {
                $.ajax({
                    type: 'post',
                    url: pzy_staffs_schedule.ajax_url,
                    data: {
                        service: 'reservation',
                        service_type,
                        service_date,
                        service_date_offset,
                        staff,
                        action: 'staff_schedule_slots',
                        security: pzy_staffs_schedule.security,
                    },
                    success: function (response) {
                        wrapper.find('.pzy-reserve-modal').removeClass('pzy-hide');
                        wrapper.find('.pzy-form-service-human-date').val(new persianDate().unix(service_date / 1000).format('YYYY/MM/DD'));
                        wrapper.find('.pzy-form-service-date').val(service_date);
                        wrapper.find('.pzy-form-staff-name').val(response.data.staff.name);
                        wrapper.find('.pzy-form-staff-id').val(response.data.staff.id);
                        wrapper.find('.pzy-form-service-type').val(response.data.service.slug);
                        wrapper.find('.pzy-time-slots').html(response.data.slots);

                    }
                })
            } else {
                alert('Please select date');
            }

        })

        $scope.on('click', '.pzy-show-more-categories', function (event) {
            event.preventDefault();
            let el = $(this);
            el.parent().parent().find('.pzy-more-services').toggleClass('pzy-hide');
            el.toggleClass('pzy-show-less');
            if (el.hasClass('pzy-show-less')) {
                el.find('.pzy-show-more-categories-text').text(pzy_staffs_schedule.translations.show_less)
            } else {
                el.find('.pzy-show-more-categories-text').text(pzy_staffs_schedule.translations.show_more)

            }
            updateDividers();
        })

        $scope.on('click', '.pzy-select-date-button', function (event) {
            event.preventDefault();
            let el = $(this);
            el.next('.pzy-select-date-box').toggleClass('pzy-hide');
        })

        $scope.find('.pzy-select-date-box.pzy-schedule-select-date-box').each(function (i, schedule_datepicker) {
            let altField = $(schedule_datepicker).data('alt');

            let inline_template = ` <div id="plotId" class="datepicker-plot-area pzy-dp-plot-area datepicker-plot-area-inline-view" style="direction: ltr">
   {{#navigator.enabled}}
   <div data-navigator class="datepicker-navigator">
      <div class="pwt-btn pwt-btn-next"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="19" viewBox="0 0 18 19" fill="none">
  <path d="M11.25 14L6.75 9.5L11.25 5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg></div>
      <div class="pwt-btn pwt-btn-switch">{{ navigator.switch.text }}</div>
      <div class="pwt-btn pwt-btn-prev"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="19" viewBox="0 0 18 19" fill="none">
<path d="M6.75 5L11.25 9.5L6.75 14" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg></div>
   </div>
   {{/navigator.enabled}}
   <div class="datepicker-grid-view" >
   {{#days.enabled}}
   {{#days.viewMode}}
   <div class="datepicker-day-view" >
   <div class="month-grid-box">
   <div class="header">
   <div class="title"></div>
   <div class="header-row">
   <div class="header-row-cell">${pzy_staffs_schedule.translations.days[0]}</div>
   <div class="header-row-cell">${pzy_staffs_schedule.translations.days[1]}</div>
   <div class="header-row-cell">${pzy_staffs_schedule.translations.days[2]}</div>
   <div class="header-row-cell">${pzy_staffs_schedule.translations.days[3]}</div>
   <div class="header-row-cell">${pzy_staffs_schedule.translations.days[4]}</div>
   <div class="header-row-cell">${pzy_staffs_schedule.translations.days[5]}</div>
   <div class="header-row-cell">${pzy_staffs_schedule.translations.days[6]}</div>
   </div>
   </div>
   <table cellspacing="0" class="table-days">
   <tbody>
   {{#days.list}}
    <tr>
   {{#.}}
    {{#enabled}}
        <td data-date="{{dataDate}}" data-unix="{{dataUnix}}" >
            <span class="{{#otherMonth}}other-month{{/otherMonth}}">{{title}}</span>
            {{#altCalendarShowHint}}
                <i class="alter-calendar-day">{{alterCalTitle}}</i>
            {{/altCalendarShowHint}}
        </td>
    {{/enabled}}
    {{^enabled}}
        <td data-date="{{dataDate}}" data-unix="{{dataUnix}}" class="disabled">
            <span class="{{#otherMonth}}other-month{{/otherMonth}}">{{title}}</span>
            {{#altCalendarShowHint}}
                <i  class="alter-calendar-day">{{alterCalTitle}}</i>  
            {{/altCalendarShowHint}}
        </td>
    {{/enabled}}
    {{/.}}
   </tr>
   {{/days.list}}
   </tbody>
   </table>
   </div>
   </div>
   {{/days.viewMode}}
   {{/days.enabled}}
    {{#month.enabled}}
   {{#month.viewMode}}
   <div class="datepicker-month-view">
   {{#month.list}}
   {{#enabled}}
   <div data-month="{{dataMonth}}" class="month-item {{#selected}}selected{{/selected}}">{{title}}</small></div>
   {{/enabled}}
   {{^enabled}}
   <div data-month="{{dataMonth}}" class="month-item month-item-disable {{#selected}}selected{{/selected}}">{{title}}</small></div>
   {{/enabled}}
   {{/month.list}}
   </div>
   {{/month.viewMode}}
   {{/month.enabled}}
    {{#year.enabled }}
   {{#year.viewMode }}
   <div class="datepicker-year-view" >
   {{#year.list}}
   {{#enabled}}
   <div data-year="{{dataYear}}" class="year-item {{#selected}}selected{{/selected}}">{{title}}</div>
   {{/enabled}}
   {{^enabled}}
   <div data-year="{{dataYear}}" class="year-item year-item-disable {{#selected}}selected{{/selected}}">{{title}}</div>
   {{/enabled}}
   {{/year.list}}
   </div>
   {{/year.viewMode }}
   {{/year.enabled }}
    </div>
   {{#time}}
   {{#enabled}}
   <div class="datepicker-time-view">
   {{#hour.enabled}}
   <div class="hour time-segment" data-time-key="hour">
   <div class="up-btn" data-time-key="hour">▲</div>
   <input value="{{hour.title}}" type="text" placeholder="hour" class="hour-input">
   <div class="down-btn" data-time-key="hour">▼</div>
   </div>
   <div class="divider">:</div>
   {{/hour.enabled}}
   {{#minute.enabled}}
   <div class="minute time-segment" data-time-key="minute" >
   <div class="up-btn" data-time-key="minute">▲</div>
   <input value="{{minute.title}}" type="text" placeholder="minute" class="minute-input">
   <div class="down-btn" data-time-key="minute">▼</div>
   </div>
   <div class="divider second-divider">:</div>
   {{/minute.enabled}}
   {{#second.enabled}}
   <div class="second time-segment" data-time-key="second"  >
   <div class="up-btn" data-time-key="second" >▲</div>
   <input value="{{second.title}}"  type="text" placeholder="second" class="second-input">
   <div class="down-btn" data-time-key="second" >▼</div>
   </div>
   <div class="divider meridian-divider"></div>
   <div class="divider meridian-divider"></div>
   {{/second.enabled}}
   {{#meridian.enabled}}
   <div class="meridian time-segment" data-time-key="meridian" >
   <div class="up-btn" data-time-key="meridian">▲</div>
   <input value="{{meridian.title}}" type="text" class="meridian-input">
   <div class="down-btn" data-time-key="meridian">▼</div>
   </div>
   {{/meridian.enabled}}
   </div>
   {{/enabled}}
   {{/time}}
    {{#toolbox}}
   {{#enabled}}
   <div class="toolbox ">
    <div class="pwt-btn-submit">
    {{submitButtonText}}
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" class="main-grid-item-icon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
        <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14" />
        <polyline points="22 4 12 14.01 9 11.01" />
    </svg>
    </div>
   </div>
   {{/enabled}}
   {{/toolbox}}
   </div>`;


            let custom_settings = {};
            if ($(schedule_datepicker).is('[data-settings]')) {
                custom_settings = $(schedule_datepicker).data('settings');
            }
            
            let default_settings = {
                inline: true,
                altField: altField,
                altFormat: 'DD MMMM YYYY',
                minDate: 1000 * new persianDate().unix(),
                initialValue: false,
                // checkDate: function (unix) {
                //     let day = new persianDate(unix).day();
                //     return day != 6 && day != 7;
                // },
                navigator: {
                    enabled: true,
                    scroll: {
                        enabled: false
                    },
                },
                toolbox: {
                    enabled: true,
                    todayButton: {
                        enabled: false,
                    },
                    // calendarSwitch: {
                    //     enabled: false
                    // },
                    submitButton: {
                        enabled: true,
                        text: {
                            fa: pzy_staffs_schedule.translations.select_date,
                            en: pzy_staffs_schedule.translations.select_date,
                        },
                        onSubmit: function (model) {
                            let service_date_offset = new persianDate().zone();

                            let unix = model.state.selected.unixDate;
                            let date = new persianDate().unix(unix / 1000);
                            let schedule_box = $(schedule_datepicker).closest('.pzy-staffs-schedule-box');
                            schedule_box.find('input[name="service_date"]').val(unix);

                            reloadStaffs(schedule_box);
                            $(altField).parent().find('input.pzy-date-unix').val(unix);
                            $(altField).parent().addClass('pzy-hide');


                        }
                    }
                },
                template: inline_template,
                //position:[37,0]
            }
            let pd = $(schedule_datepicker).persianDatepicker({...default_settings, ...custom_settings});

console.log({...default_settings, ...custom_settings});

            if ($(schedule_datepicker).is('[data-init]')) {
                pd.setDate($(schedule_datepicker).data('init'));
            }

        })

        $scope.on('click', '.pzy-staffs-schedules-categories .pzy-staffs-schedules-category-button[data-slug]', function () {
            let el = $(this);
            let slug = el.data('slug');
            if (el.is('.pzy-staffs-schedules-category-button-active')) {
                return;
            }

            let schedule_box = el.closest('.pzy-staffs-schedule-box');
            let service_date = schedule_box.find('input[name="service_date"]').val();
            if (service_date.length) {
                let categories_list = el.closest('.pzy-staffs-schedules-categories');
                let service_type = categories_list.find('input[name="service_type"]');
                categories_list.find('.pzy-staffs-schedules-category-button-active').removeClass('pzy-staffs-schedules-category-button-active');
                el.addClass('pzy-staffs-schedules-category-button-active');
                service_type.val(slug);
                service_type.trigger('change');
            } else {
                alert('ابتدا باید تاریخ را مشخص کنید.')
            }
        })

        $scope.on('change', '.pzy-staffs-schedules-categories input[name="service_type"],.pzy-staffs-schedules-categories input[name="service_date"]', function (e) {
            let el = $(this);
            let schedule_box = el.closest('.pzy-staffs-schedule-box');

            reloadStaffs(schedule_box);
        });

        $scope.on('submit', '.pzy-reserve-form', function (event) {
            event.preventDefault();
            let el = $(this);
            let form_data = el.serialize() + `&service_date_offset=${pzy_time_offset}&action=staff_schedule_submit&security=${pzy_staffs_schedule.security}`;
            $.ajax({
                type: 'post',
                url: pzy_staffs_schedule.ajax_url,
                dataType: 'json',
                data: form_data,
                success: function (response) {
                    if (response.success) {
                        window.location.href = response.data.redirect;
                    }
                }
            });
        })

    });
})
