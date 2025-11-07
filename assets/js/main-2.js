// function pzy_process_schedule_datepicker(i, schedule_datepicker){
//     let altField = $(schedule_datepicker).data('alt');
//     let reserve_form = $(altField).closest('.pzy-modal-reserve-form');
//     let service_date_offset = '';

//     let inline_template = ` <div id="plotId" class="datepicker-plot-area pzy-dp-plot-area datepicker-plot-area-inline-view" style="direction: ltr">
//         {{#navigator.enabled}}
//         <div data-navigator class="datepicker-navigator">
//       <div class="pwt-btn pwt-btn-next"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="19" viewBox="0 0 18 19" fill="none">
//   <path d="M11.25 14L6.75 9.5L11.25 5" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// </svg></div>
//       <div class="pwt-btn pwt-btn-switch">{{ navigator.switch.text }}</div>
//       <div class="pwt-btn pwt-btn-prev"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="19" viewBox="0 0 18 19" fill="none">
// <path d="M6.75 5L11.25 9.5L6.75 14" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
// </svg></div>
//         </div>
//         {{/navigator.enabled}}
//         <div class="datepicker-grid-view" >
//         {{#days.enabled}}
//         {{#days.viewMode}}
//         <div class="datepicker-day-view" >
//         <div class="month-grid-box">
//         <div class="header">
//         <div class="title"></div>
//         <div class="header-row">
//    <div class="header-row-cell">${pzy_staffs_schedule.translations.days[0]}</div>
//    <div class="header-row-cell">${pzy_staffs_schedule.translations.days[1]}</div>
//    <div class="header-row-cell">${pzy_staffs_schedule.translations.days[2]}</div>
//    <div class="header-row-cell">${pzy_staffs_schedule.translations.days[3]}</div>
//    <div class="header-row-cell">${pzy_staffs_schedule.translations.days[4]}</div>
//    <div class="header-row-cell">${pzy_staffs_schedule.translations.days[5]}</div>
//    <div class="header-row-cell">${pzy_staffs_schedule.translations.days[6]}</div>
//         </div>
//         </div>
//         <table cellspacing="0" class="table-days">
//         <tbody>
//         {{#days.list}}
//             <tr>
//         {{#.}}
//             {{#enabled}}
//                 <td data-date="{{dataDate}}" data-unix="{{dataUnix}}" >
//                     <span class="{{#otherMonth}}other-month{{/otherMonth}}">{{title}}</span>
//                     {{#altCalendarShowHint}}
//                         <i class="alter-calendar-day">{{alterCalTitle}}</i>
//                     {{/altCalendarShowHint}}
//                 </td>
//             {{/enabled}}
//             {{^enabled}}
//                 <td data-date="{{dataDate}}" data-unix="{{dataUnix}}" class="disabled">
//                     <span class="{{#otherMonth}}other-month{{/otherMonth}}">{{title}}</span>
//                     {{#altCalendarShowHint}}
//                         <i  class="alter-calendar-day">{{alterCalTitle}}</i>  
//                     {{/altCalendarShowHint}}
//                 </td>
//             {{/enabled}}
//             {{/.}}
//         </tr>
//         {{/days.list}}
//         </tbody>
//         </table>
//         </div>
//         </div>
//         {{/days.viewMode}}
//         {{/days.enabled}}
//             {{#month.enabled}}
//         {{#month.viewMode}}
//         <div class="datepicker-month-view">
//         {{#month.list}}
//         {{#enabled}}
//         <div data-month="{{dataMonth}}" class="month-item {{#selected}}selected{{/selected}}">{{title}}</small></div>
//         {{/enabled}}
//         {{^enabled}}
//         <div data-month="{{dataMonth}}" class="month-item month-item-disable {{#selected}}selected{{/selected}}">{{title}}</small></div>
//         {{/enabled}}
//         {{/month.list}}
//         </div>
//         {{/month.viewMode}}
//         {{/month.enabled}}
//             {{#year.enabled }}
//         {{#year.viewMode }}
//         <div class="datepicker-year-view" >
//         {{#year.list}}
//         {{#enabled}}
//         <div data-year="{{dataYear}}" class="year-item {{#selected}}selected{{/selected}}">{{title}}</div>
//         {{/enabled}}
//         {{^enabled}}
//         <div data-year="{{dataYear}}" class="year-item year-item-disable {{#selected}}selected{{/selected}}">{{title}}</div>
//         {{/enabled}}
//         {{/year.list}}
//         </div>
//         {{/year.viewMode }}
//         {{/year.enabled }}
//             </div>
//         {{#time}}
//         {{#enabled}}
//         <div class="datepicker-time-view">
//         {{#hour.enabled}}
//         <div class="hour time-segment" data-time-key="hour">
//         <div class="up-btn" data-time-key="hour">▲</div>
//         <input value="{{hour.title}}" type="text" placeholder="hour" class="hour-input">
//         <div class="down-btn" data-time-key="hour">▼</div>
//         </div>
//         <div class="divider">:</div>
//         {{/hour.enabled}}
//         {{#minute.enabled}}
//         <div class="minute time-segment" data-time-key="minute" >
//         <div class="up-btn" data-time-key="minute">▲</div>
//         <input value="{{minute.title}}" type="text" placeholder="minute" class="minute-input">
//         <div class="down-btn" data-time-key="minute">▼</div>
//         </div>
//         <div class="divider second-divider">:</div>
//         {{/minute.enabled}}
//         {{#second.enabled}}
//         <div class="second time-segment" data-time-key="second"  >
//         <div class="up-btn" data-time-key="second" >▲</div>
//         <input value="{{second.title}}"  type="text" placeholder="second" class="second-input">
//         <div class="down-btn" data-time-key="second" >▼</div>
//         </div>
//         <div class="divider meridian-divider"></div>
//         <div class="divider meridian-divider"></div>
//         {{/second.enabled}}
//         {{#meridian.enabled}}
//         <div class="meridian time-segment" data-time-key="meridian" >
//         <div class="up-btn" data-time-key="meridian">▲</div>
//         <input value="{{meridian.title}}" type="text" class="meridian-input">
//         <div class="down-btn" data-time-key="meridian">▼</div>
//         </div>
//         {{/meridian.enabled}}
//         </div>
//         {{/enabled}}
//         {{/time}}
//         {{#toolbox}}
//             {{#enabled}}
//             <div class="toolbox ">
//                 <div class="pwt-btn-submit">
//                 {{submitButtonText}}
//                 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" class="main-grid-item-icon" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2">
//                     <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14" />
//                     <polyline points="22 4 12 14.01 9 11.01" />
//                 </svg>
//                 </div>
//             </div>
//             {{/enabled}}
//         {{/toolbox}}
//         </div>`;


//     let custom_settings = {};
//     if ($(schedule_datepicker).is('[data-settings]')) {
//         custom_settings = $(schedule_datepicker).data('settings');
//     }

//     let default_settings = {
//         inline: true,
//         altField: altField,
//         altFormat: 'DD MMMM YYYY',
//         minDate: 1000 * new persianDate().unix(),
//         initialValue: false,
//         // checkDate: function (unix) {
//         //     let day = new persianDate(unix).day();
//         //     return day != 6 && day != 7;
//         // },
//         navigator: {
//             enabled: true,
//             scroll: {
//                 enabled: false
//             }
//         },
//         toolbox: {
//             enabled: true,
//             todayButton: {
//                 enabled: false,
//             },
//             calendarSwitch: {
//                 enabled: false
//             },
//             submitButton: {
//                 enabled: true,
//                 text: {
//                     fa: 'ثبت',
//                     en: 'select',
//                 },
//                 onSubmit: function (model) {
//                     let unix = model.state.selected.unixDate;
//                     let date = new persianDate().unix(unix / 1000);
//                     let staff = reserve_form.find('input.pzy-form-staff-id').val();
//                     let submit_button = reserve_form.find('.pwt-btn-submit');
//                     if(submit_button && submit_button.is('[data-loading]')){
//                         return;
//                     }
                                        
//                     $.ajax({
//                         type: 'post',
//                         url: pzy_staffs_schedule.ajax_url,
//                         data: {
//                             service: 'consultation',
//                             service_date: unix,
//                             service_date_offset,
//                             staff,
//                             action: 'staff_schedule_slots',
//                             security: pzy_staffs_schedule.security,
//                         },
//                         beforeSend: function() {
//                             console.log('start loading');
                            
//                             submit_button.attr('data-loading','')
//                         },
//                         success: function (response) {
//                             reserve_form.find('.pzy-time-slots').html(response.data.slots)
//                             reserve_form.find('input.pzy-form-service-human-date').val(date.format('YYYY/MM/DD'));
//                             reserve_form.find('input.pzy-form-service-date').val(unix);
//                             $(altField).parent().addClass('pzy-hide');
//                         },
//                         complete: function() {
//                             console.log('end loading');
//                             submit_button.removeAttr('data-loading')
//                         }
//                     })


//                 }
//             }
//         },
//         template: inline_template,
//         //position:[37,0]
//     }

//     let pd = $(schedule_datepicker).persianDatepicker({...default_settings, ...custom_settings});
// }

jQuery(document).ready(function () {
    let pzy_time_offset = '';

    $(document).on('click','form.pzy-consultation-form .pzy-datepicker-submit',function(e){
        e.preventDefault();
        let submit_button = $(this);
        if(submit_button.is('[data-loading]')){
            return;
        }
        let dp = $(this).closest('.pzy-datepicker');
        let form = dp.closest('form')
        if(!dp.is('[data-display]')){
            return;
        }

        let service_date = form.find('input[name="service_date"]');
        if(!service_date.length){
            return;
        }
        let unix_input = dp.find('input.calendar-unix');
        
        if(unix_input.length){
            let unix = unix_input.val();
            service_date.val(unix);

            let display_text = dp.attr('data-display');
            let display_input = form.find('input.pzy-form-service-human-date');
            if(display_input.length){
                display_input.val(display_text);
            }
            let service_date_offset = '';
            let staff = form.find('input.pzy-form-staff-id').val();

            $.ajax({
                type: 'post',
                url: pzy_staffs_schedule.ajax_url,
                data: {
                    service: 'consultation',
                    service_date: unix,
                    service_date_offset,
                    staff,
                    action: 'staff_schedule_slots',
                    security: pzy_staffs_schedule.security,
                },
                beforeSend: function() {                    
                    submit_button.attr('data-loading','')
                },
                success: function (response) {
                    form.find('.pzy-time-slots').html(response.data.slots)
                    dp.parent().addClass('pzy-hide');
                },
                complete: function() {
                    // console.log('end loading');
                    submit_button.removeAttr('data-loading')
                }
            })
        }
        
    })

    $(document).on('click', '.pzy-staff-consultation-request[data-staff]', function () {
        let el = $(this);
        let staff = el.data('staff');
        let consultation_modal = el.closest('.pzy-staffs-consultation').find('.pzy-consultation-modal');
        if (consultation_modal) {
            let prev_staff = consultation_modal.find('input.pzy-form-staff-id').val();
            if(prev_staff != staff){
                let staff_name = el.data('staff-name');
                consultation_modal.find('input.pzy-form-staff-id').val(staff)
                consultation_modal.find('input.pzy-form-staff-name').val(staff_name)

                consultation_modal.find('.pzy-time-slots').html(`<p class='pzy-reservation-message pzy-reservation-time-not-found'>${pzy_staffs_schedule.date_select_message}</p>`);

                consultation_modal.find('input.pzy-form-service-human-date').val('')
                consultation_modal.find('input.pzy-form-service-date').val('')
            }
            // $('body,.pzy-main-layout').addClass('pzy-overflow-hidden');
            consultation_modal.removeClass('pzy-hide');
        }
    })

    $(document).on('click', '.pzy-consultation-show-date', function () {
        let el = $(this);
        el.parent().find('.pzy-datepicker-wrapper').toggleClass('pzy-hide');
    })

    $(document).on('submit', '.pzy-consultation-form', function (event) {
        event.preventDefault();
        let el = $(this);
        let form_data = el.serialize() + `&service_date_offset=${pzy_time_offset}&action=staff_schedule_consultation_submit&security=${pzy_staffs_schedule.security}`;
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

    // $('.pzy-staffs-archive .pzy-select-date-box.pzy-consultation-select-date-box').each(function (i, schedule_datepicker) {
    //     pzy_process_schedule_datepicker(i, schedule_datepicker);
    // })

});

jQuery(window).on('elementor/frontend/init', function () {
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_staffs_slider.default', function ($scope) {
        // $scope.find('.pzy-select-date-box.pzy-consultation-select-date-box').each(function (i, schedule_datepicker) {
        //     pzy_process_schedule_datepicker(i,schedule_datepicker);
        // })
    })
    elementorFrontend.hooks.addAction('frontend/element_ready/pzy_staff_consultation.default', function ($scope) {
        // $scope.find('.pzy-select-date-box.pzy-consultation-select-date-box').each(function (i, schedule_datepicker) {
        //     pzy_process_schedule_datepicker(i,schedule_datepicker);
        // })
    })
})