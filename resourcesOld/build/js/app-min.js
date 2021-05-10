// @codekit-append "actions.js"
// @codekit-append "functions.js"
// @codekit-append "vendors/autosize-textarea.js"
// @codekit-append "vendors/bootstrap-colorpicker.js"
// @codekit-append "vendors/bootstrap.js"
// @codekit-append "vendors/clamp.js"
// @codekit-append "vendors/datatables.js"
// @codekit-append "vendors/dropzone.js"
// @codekit-append "vendors/flatpickr.js"
// @codekit-append "vendors/fullcalendar.js"
// @codekit-append "vendors/jqtree.js"
// @codekit-append "vendors/jquery-mask-plugin.js"
// @codekit-append "vendors/jquery-text-counter.js"
// @codekit-append "vendors/jquery.easy-pie-charts.js"
// @codekit-append "vendors/jqvmap.js"
// @codekit-append "vendors/light-gallery.js"
// @codekit-append "vendors/nouislider.js"
// @codekit-append "vendors/overlay-scrollbars.js"
// @codekit-append "vendors/peity.js"
// @codekit-append "vendors/rateyo.js"
// @codekit-append "vendors/select2.js"
// @codekit-append "vendors/sweetalert2.js"
// @codekit-append "vendors/trumbowyg.js"
// @codekit-append "vendors/flot-charts/bar.js"
// @codekit-append "vendors/flot-charts/chart-tooltips.js"
// @codekit-append "vendors/flot-charts/curved-line.js"
// @codekit-append "vendors/flot-charts/dynamic.js"
// @codekit-append "vendors/flot-charts/line.js"
// @codekit-append "vendors/flot-charts/pie.js"


'use strict';

$(document).ready(function () {
    var $body = $('body');

    //Fullscreen Launch function
    function launchIntoFullscreen(element) {

        if(element.requestFullscreen) {
            element.requestFullscreen();
        } else if(element.mozRequestFullScreen) {
            element.mozRequestFullScreen();
        } else if(element.webkitRequestFullscreen) {
            element.webkitRequestFullscreen();
        } else if(element.msRequestFullscreen) {
            element.msRequestFullscreen();
        }
    }

    //Fullscreen exit function
    function exitFullscreen() {

        if(document.exitFullscreen) {
            document.exitFullscreen();
        } else if(document.mozCancelFullScreen) {
            document.mozCancelFullScreen();
        } else if(document.webkitExitFullscreen) {
            document.webkitExitFullscreen();
        }
    }


    $body.on('click', '[data-sa-action]', function (e) {
        e.preventDefault();

        var $this = $(this);
        var action = $this.data('sa-action');
        var target = '';

        switch (action) {
            /*-------------------------------------------
                Search
            ---------------------------------------------*/
            // Open
            case 'search-open':
                $('.search').addClass('search--toggled');
                break;

            // Close
            case 'search-close':
                $('.search').removeClass('search--toggled');
                break;


            /*-------------------------------------------
                Aside
            ---------------------------------------------*/
            // Open
            case 'aside-open':
                target = $this.data('sa-target');
                $this.addClass('toggled');
                $('body').addClass('aside-toggled');
                $(target).addClass('toggled');
                $('.content, .header').append('<div class="sa-backdrop" data-sa-action="aside-close" data-sa-target='+target+' />');
                break;


            case 'aside-close':
                target = $this.data('sa-target');
                $('body').removeClass('aside-toggled');
                $('[data-sa-action="aside-open"], '+target).removeClass('toggled');
                $('.content, .header').find('.sa-backdrop').remove();
                break;


            /*-------------------------------------------
                Full screen browse
            ---------------------------------------------*/
            case 'fullscreen':
                launchIntoFullscreen(document.documentElement);
                break;


            /*-------------------------------------------
                Print
            ---------------------------------------------*/
            case 'print':
                window.print();
                break;


            /*-------------------------------------------
                Login
            --------------------------------------------*/
            case 'login-switch':
                target = $this.data('sa-target');
                $('.login__block').removeClass('active');
                $(target).addClass('active');
                break;


            /*-------------------------------------------
                Notifications clear
            --------------------------------------------*/
            case 'notifications-clear':
                e.stopPropagation();

                var items = $('.top-nav__notifications .listview__item');
                var itemsCount = items.length;
                var index = 0;
                var delay = 150;

                $this.fadeOut();

                items.each(function () {
                    var currentItem = $(this);
                    setTimeout(function () {
                        currentItem.addClass('animated fadeOutRight');
                    }, index+=delay);
                });

                setTimeout(function () {
                    items.remove();
                    $('.top-nav__notifications').addClass('top-nav__notifications--cleared');
                    $('.top-nav__notifications a').removeClass('top-nav__notify');
                }, itemsCount*180);
                break;


            /*------------------------------------------------
                Toolbar search toggle
            -------------------------------------------------*/

            // Open
            case 'toolbar-search-open':
                $(this).closest('.toolbar').find('.toolbar__search').fadeIn(200);
                $(this).closest('.toolbar').find('.toolbar__search input').focus();
                break;

            // Close
            case 'toolbar-search-close':
                $(this).closest('.toolbar').find('.toolbar__search input').val('');
                $(this).closest('.toolbar').find('.toolbar__search').fadeOut(200);
                break;
        }
    }); 
});

'use strict';

/*------------------------------------------------
 Page Loader
-------------------------------------------------*/
$(window).on('load', function () {
    setTimeout(function () {
        $('.page-loader').fadeOut();
    }, 500);
});

/*------------------------------------------------
 Header
-------------------------------------------------*/
$(window).on('scroll', function() {
    var scroll = $(window).scrollTop();
    if (scroll >= 20) {
        $('.header').addClass('header--scrolled');
    } else {
        $('.header').removeClass('header--scrolled');
    }
});


$(document).ready(function () {
    var $body = $('body');

    /*------------------------------------------------
     Time
    -------------------------------------------------*/
    if($('.clock')[0]) {
        var newDate = new Date();
        newDate.setDate(newDate.getDate());

        setInterval( function() {
            var seconds = new Date().getSeconds();
            $('.time__sec').html(( seconds < 10 ? '0' : '' ) + seconds);
        },1000);

        setInterval( function() {
            var minutes = new Date().getMinutes();
            $('.time__min').html(( minutes < 10 ? '0' : '' ) + minutes);
        },1000);

        setInterval( function() {
            var hours = new Date().getHours();
            $('.time__hours').html(( hours < 10 ? '0' : '' ) + hours);
        }, 1000);
    }


    /*------------------------------------------------
     Theme Switch
    -------------------------------------------------*/
    $body.on('click', '.themes__item', function (e) {
        e.preventDefault();

        // Set active item
        $('.themes__item').removeClass('active');
        $(this).addClass('active');

        // Set theme
        var theme = $(this).data('sa-value');
        $body.attr('data-sa-theme', theme);
    });


    /*------------------------------------------------
     Search
    -------------------------------------------------*/

    // Active Stat
    $body.on('focus', '.search__text', function () {
        $(this).closest('.search').addClass('search--focus');
    });

    // Clear
    $body.on('blur', '.search__text', function () {
        $(this).val('');
        $(this).closest('.search').removeClass('search--focus');
    });


    /*------------------------------------------------
     Sidebar toggle menu
    -------------------------------------------------*/
    $body.on('click', '.navigation__sub > a', function (e) {
        e.preventDefault();

        $(this).parent().toggleClass('navigation__sub--toggled');
        $(this).next('ul').slideToggle(250);
    });


    /*------------------------------------------------
     Form group bar
    -------------------------------------------------*/
    if($('.form-group--float')[0]) {
        $('.form-group--float').each(function () {
            var p = $(this).find('.form-control').val()

            if(!p.length == 0) {
                $(this).find('.form-control').addClass('form-control--active');
            }
        });

        $body.on('blur', '.form-group--float .form-control', function(){
            var i = $(this).val();

            if (i.length == 0) {
                $(this).removeClass('form-control--active');
            }
            else {
                $(this).addClass('form-control--active');
            }
        });
    }


    /*------------------------------------------------
     Stay active Dropdown menu
    -------------------------------------------------*/
    $body.on('click', '.dropdown-menu--active', function (e) {
        e.stopPropagation();
    });
});

$(document).ready(function () {
    if($('.textarea-autosize')[0]) {
        autosize($('.textarea-autosize'));
    }
});

$(document).ready(function () {
    if ($('.color-picker')[0]) {
        $('.color-picker__value').colorpicker();

        $('body').on('change', '.color-picker__value', function () {
            $(this).closest('.color-picker').find('.color-picker__preview').css('backgroundColor', $(this).val());
        });
    }
});

$(document).ready(function () {
    // Popovers
    if($('[data-toggle="popover"]')[0]) {
        $('[data-toggle="popover"]').popover();
    }

    // Tooltips
    if($('[data-toggle="tooltip"]')[0]) {
        $('[data-toggle="tooltip"]').tooltip();
    }

    // File browser
    $('body').on('change', '.custom-file-input', function () {
        var fileName = $(this).val();
        $(this).next('.custom-file-label').html(fileName);
    });

    // Toast
    $('body').on('click', '[data-dismiss="toast"]', function () {
        $(this).closest('.toast').toast('hide');
    });
});

$(document).ready(function () {
    if($('.notes__body')[0]) {
        var clamp;

        $('.notes__body').each(function(index, element) {
            if($(this).prev().is('.notes__title')) {
                clamp = 4;
            }
            else {
                clamp = 6;
            }

            $clamp(element, { clamp: clamp });
        });
    }
});

$(document).ready(function () {
    if($('#data-table')[0]) {

        // Custom action links
        var dataTableActions =  '<i class="zwicon-more-h" data-toggle="dropdown" />' +
            '<div class="dropdown-menu dropdown-menu-right">' +
            '<a data-table-action="print" class="dropdown-item">Print</a>' +
            '<a data-table-action="fullscreen" class="dropdown-item">Fullscreen</a>' +
            '<div class="dropdown-divider" />' +
            '<div class="dropdown-header border-bottom-0 pt-0"><small>Download as</small></div>' +
            '<a data-table-action="excel" class="dropdown-item">Excel (.xlsx)</a>' +
            '<a data-table-action="csv" class="dropdown-item">CSV (.csv)</a>' +
            '</div>';

        // Initiate data-table
        $('#data-table').DataTable({
            autoWidth: false,
            responsive: true,
            lengthMenu: [[15, 30, 45, -1], ['15 Rows', '30 Rows', '45 Rows', 'Everything']],
            language: {
                searchPlaceholder: "Search for records..." // Search placeholder
            },
            "sDom": '<"dataTables__top"flB<"dataTables_actions">>rt<"dataTables__bottom"ip><"clear">',
            buttons: [ // Data table buttons for export and print
                {
                    extend: 'excelHtml5',
                    title: 'Export Data'
                },
                {
                    extend: 'csvHtml5',
                    title: 'Export Data'
                },
                {
                    extend: 'print',
                    title: 'Material Admin'
                }
            ],
            initComplete: function() {
                $('.dataTables_actions').html(dataTableActions);
            }
        });

        // Data table button actions 
        $('body').on('click', '[data-table-action]', function (e) {
            e.preventDefault();

            var action = $(this).data('table-action');

            if(action === 'excel') {
                $('#data-table_wrapper').find('.buttons-excel').click();
            }
            if(action === 'csv') {
                $('#data-table_wrapper').find('.buttons-csv').click();
            }
            if(action === 'print') {
                $('#data-table_wrapper').find('.buttons-print').click();
            }
            if(action === 'fullscreen') {
                var parentCard = $(this).closest('.card');

                if(parentCard.hasClass('card--fullscreen')) {
                    parentCard.removeClass('card--fullscreen');
                    $body.removeClass('data-table-toggled');
                }
                else {
                    parentCard.addClass('card--fullscreen')
                    $body.addClass('data-table-toggled');
                }
            }
        });
    }
});

// Disable Dropzone auto discover
if($('#dropzone-upload')[0]) {
    Dropzone.autoDiscover = false;
}

$(document).ready(function () {
    if($('#dropzone-upload')[0]) {
        $('#dropzone-upload').dropzone({
            url: "/file/post",
            addRemoveLinks: true
        });
    }
});

$(document).ready(function () {
    // Date and time
    if($('.datetime-picker')[0]) {
        $('.datetime-picker').flatpickr({
            enableTime: true,
            nextArrow: '<i class="zwicon-arrow-right" />',
            prevArrow: '<i class="zwicon-arrow-left" />'
        });
    }

    // Date only
    if($('.date-picker')[0]) {
        $('.date-picker').flatpickr({
            enableTime: false,
            nextArrow: '<i class="zwicon-arrow-right" />',
            prevArrow: '<i class="zwicon-arrow-left" />'
        });
    }
});

$(document).ready(function () {
    //---------------------------------
    //  Widget
    //---------------------------------
    if($('#widget-calendar-body')[0]) {
        var calendarEl = document.getElementById('widget-calendar-body');
        var date = new Date();
        var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
        var months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

        var calendar = new FullCalendar.Calendar(calendarEl, {
            plugins: ['dayGrid'],
            header: {
                right: 'next',
                center: 'title',
                left: 'prev'
            },
            defaultDate: '2020-08-12',
            events: [
                {
                    title: 'Dolor Pellentesque',
                    start: '2020-08-01'
                },
                {
                    title: 'Purus Nibh',
                    start: '2020-08-07'
                },
                {
                    title: 'Amet Condimentum',
                    start: '2020-08-09'
                },
                {
                    title: 'Tellus',
                    start: '2020-08-12'
                },
                {
                    title: 'Vestibulum',
                    start: '2020-08-18'
                },
                {
                    title: 'Ipsum',
                    start: '2020-08-24'
                },
                {
                    title: 'Fringilla Sit',
                    start: '2020-08-27'
                },
                {
                    title: 'Amet Pharetra',
                    url: 'http://google.com/',
                    start: '2020-08-30'
                }
            ]
        });

        calendar.render();

        //Display Current Date as Calendar widget header
        $('.widget-calendar__year').html(date.getFullYear());
        $('.widget-calendar__day').html(days[date.getDay()] + ', ' + months[date.getMonth()].substring(0, 3) + ' ' + date.getDay());
    }


    //---------------------------------
    //  Page
    //---------------------------------
    if($('#calendar')[0]) {
        var calendarEl = document.getElementById('calendar');
        var calendarTitle = document.getElementById('calendar-title');
        var date = new Date();
        var month = date.getMonth();
        var year = date.getFullYear();
        var editEventID;
        var addEventDate;
        var events = [

            {
                id: 1,
                title: 'Fusce dapibus tellus',
                start: new Date(year, month, 1),
                allDay: true,
                description: 'Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'
            },
            {
                id: 2,
                title: 'Fusce dapibus tellus',
                start: new Date(year, month, 10),
                allDay: true,
                description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
            },
            {
                id: 3,
                title: 'Egestas Justo',
                start: new Date(year, month, 18),
                allDay: true,
                description: ''
            },
            {
                id: 4,
                title: 'Bibendum Vehicula Quam',
                start: new Date(year, month, 20),
                allDay: true,
                description: ''
            },
            {
                id: 5,
                title: 'Venenatis Dolor Porta',
                start: new Date(year, month, 5),
                allDay: true,
                description: 'Sed posuere consectetur est at lobortis. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.'
            },
            {
                id: 6,
                title: 'Sem Pharetra',
                start: new Date(year, month, 21),
                allDay: true,
                description: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'
            },
            {
                id: 7,
                title: 'Ullamcorper Porta',
                start: new Date(year, month, 5),
                allDay: true,
                description: 'Malesuada Ullamcorper Nullam'
            },
            {
                id: 8,
                title: 'Egestas',
                start: new Date(year, month, 5),
                allDay: true,
                description: ''
            },
            {
                id: 9,
                title: 'Purus',
                start: new Date(year, month, 1),
                allDay: true,
                description: 'Sed posuere consectetur est at lobortis. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.'
            },
            {
                id: 10,
                title: 'Risus Elit',
                start: new Date(year, month, 15),
                allDay: true,
                description: 'Etiam porta sem malesuada magna mollis euismod. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.'
            },
            {
                id: 11,
                title: 'Risus Fermentum Justo',
                start: new Date(year, month, 25),
                allDay: true,
                description: 'Vehicula Cras'
            },
            {
                id: 12,
                title: 'Porta Ornare Euismod',
                start: new Date(year, month, 30),
                allDay: true,
                description: ''
            },
            {
                id: 13,
                title: 'Amet Adipiscing',
                start: new Date(year, month, 30),
                allDay: true,
                description: ''
            }
        ];

        var calendar = new FullCalendar.Calendar(calendarEl, {
            timeZone: 'local',
            plugins: ['dayGrid', 'interaction'],
            editable: true,
            header: false,
            height: 'auto',
            events: events,
            datesRender: function () {
                var currentDate = calendar.getDate();
                calendarEl.setAttribute('data-calendar-month', currentDate.getMonth() + 1);
                calendarTitle.innerText = calendar.view.title
            },
            dateClick: function (info) {
                addEventDate = info.dateStr;
                var modal = $('#event-new');

                modal.modal('show');
                modal.find('.event-new__title').val('').removeClass('is-invalid');
            },
            eventClick: function (info) {
                editEventID = info.event.id;
                var modal = $('#event-edit');

                modal.modal('show');
                modal.find('.event-new__title').val('').removeClass('is-invalid');
                modal.find('.event-edit__title').val(info.event.title);
            }
        });

        calendar.render();

        // Calendar navigation
        $('[data-calendar-view]').on('click', function (e) {
            e.preventDefault();
            var view = $(this).data('calendar-view');

            switch (view) {
                case 'next':
                    calendar.next();
                    break;

                case 'prev':
                    calendar.prev();
                    break;

                case 'today':
                    calendar.today();
                    break;
            }
        });


        // Add new event
        $('.event-new__add').on('click', function () {
            var titleField = $('.event-new__title');
            var title = $('.event-new__title').val();
            var date = addEventDate;

            if(title.length == 0) {
                titleField.addClass('is-invalid');
            }
            else {
                calendar.addEvent({
                    title: title,
                    start: date,
                    allDay: true
                });
                $('#event-new').modal('hide');
            }
        });


        // Edit event
        $('.event-edit__update').on('click', function () {
            var titleField = $('.event-edit__title');
            var title = $('.event-edit__title').val();

            if(title.length == 0) {
                titleField.addClass('is-invalid');
            }
            else {
                var event = calendar.getEventById(editEventID);
                event.setProp('title', title);
                $('#event-edit').modal('hide');
            }
        });


        // Delete event
        $('.event-edit__delete').on('click', function () {
            var event = calendar.getEventById(editEventID);
            event.remove();
            $('#event-edit').modal('hide');
        });
    }
});

$(document).ready(function () {
    var treeviewData = [
        {
            name: 'node1',
            children: [
                {
                    name: 'node1_1',
                    children: [
                        { name: 'node1_1_1' },
                        { name: 'node1_1_2' },
                        { name: 'node1_1_3' }
                    ]
                },
                { name: 'node1_2' },
                { name: 'node1_3' }
            ]
        },
        {
            name: 'node2',
            children: [
                { name: 'node2_1' },
                { name: 'node2_2' },
                { name: 'node2_3' }
            ]
        },
        {
            name: 'node3',
            children: [
                { name: 'node3_1' },
                { name: 'node3_2' },
                { name: 'node3_3' }
            ]
        }
    ];

    var treeviewSimpleData = [
        {
            name: 'node1',
            children: [
                { name: 'node1_1' },
                { name: 'node1_2' },
                { name: 'node1_3' }
            ]
        },
        {
            name: 'node2',
            children: [
                { name: 'node2_1' },
                { name: 'node2_2' },
                { name: 'node2_3' }
            ]
        }
    ];

    var treeviewEscapeData = [
        {
            label: 'node1',
            children: [
                { name: '<a href="example1.html">node1_1</a>' },
                { name: '<a href="example2.html">node1_2</a>' },
                '<a href="example3.html">Example </a>'
            ]
        }
    ];

    if($('.treeview')[0]) {
        $('.treeview').tree({
            data: treeviewData,
            closedIcon: $('<i class="zwicon-plus"></i>'),
            openedIcon: $('<i class="zwicon-minus"></i>')
        });
    }

    if($('.treeview-expanded')[0]) {
        $('.treeview-expanded').tree({
            data: treeviewSimpleData,
            autoOpen: true,
            closedIcon: $('<i class="zwicon-plus"></i>'),
            openedIcon: $('<i class="zwicon-minus"></i>')
        });
    }

    if($('.treeview-drag')[0]) {
        $('.treeview-drag').tree({
            data: treeviewSimpleData,
            dragAndDrop: true,
            autoOpen: true,
            closedIcon: $('<i class="zwicon-plus"></i>'),
            openedIcon: $('<i class="zwicon-minus"></i>')
        });
    }

    if($('.treeview-escape')[0]) {
        $('.treeview-escape').tree({
            data: treeviewEscapeData,
            autoEscape: false,
            autoOpen: true,
            closedIcon: $('<i class="zwicon-plus"></i>'),
            openedIcon: $('<i class="zwicon-minus"></i>')
        });
    }
});

$(document).ready(function () {
    if ($('input-mask')[0]) {
        $('.input-mask').mask();
    }
});

$(document).ready(function () {
    if($('.text-counter')[0]) {
        $('.text-counter').each(function () {
            var minLength = $(this).data('min-length') || 0;
            var maxLength = $(this).data('max-length');

            $(this).textcounter({
                min: minLength,
                max: maxLength,
                countDown: true,
                inputErrorClass: 'is-invalid',
                counterErrorClass: 'text-red'
            });
        });
    }
});

$(document).ready(function () {

    if($('.easy-pie-chart')[0]) {
        $('.easy-pie-chart').each(function () {
            var value = $(this).data('value');
            var size = $(this).data('size');
            var trackColor = $(this).data('track-color');
            var barColor = $(this).data('bar-color');

            $(this).find('.easy-pie-chart__value').css({
                lineHeight: (size - 2)+'px',
                fontSize: (size/5)+'px',
                color: barColor
            });

            $(this).easyPieChart ({
                easing: 'easeOutBounce',
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: 'rgba(255,255,255,0.15)',
                lineCap: 'round',
                lineWidth: 1,
                size: size,
                animate: 3000,
                onStep: function(from, to, percent) {
                    $(this.el).find('.percent').text(Math.round(percent));
                }
            })
        });
    }

});

$(document).ready(function () {

    // Realtime visitors widget map
    if($('.map-visitors')[0]) {
        $('.map-visitors').vectorMap({
            map: 'world_en',
            backgroundColor: 'rgba(0,0,0,0)',
            color: 'rgba(255,255,255,0.2)',
            borderColor: 'rgba(255,255,255,0.2)',
            hoverOpacity: 1,
            selectedColor: 'rgba(255,255,255,0.9)',
            enableZoom: false,
            showTooltip: true,
            normalizeFunction: 'polynomial',
            selectedRegions: ['US', 'EN', 'NZ', 'CN', 'JP', 'SL', 'BR', 'AU', 'EG', 'BA'],
            onRegionClick: function (event) {
                event.preventDefault();
            }
        });
    }

    // All maps
    if($('.jqvmap')[0]) {
        $('.jqvmap').each(function () {
            var map = $(this).data('map');

            $(this).vectorMap({
                map: map,
                backgroundColor: 'rgba(0,0,0,0)',
                color: 'rgba(255,255,255,0.5)',
                borderColor: 'rgba(255,255,255,0.5)',
                hoverColor: 'rgba(255,255,255,0.75)',
                selectedColor: '#fff',
                enableZoom: true
            });
        });
    }
});

$(document).ready(function () {
    if ($('.lightbox')[0]) {
        $('.lightbox').lightGallery({
            enableTouch: true
        });
    }
});

$(document).ready(function () {
    // Single
    if($('#input-slider')[0]) {
        var slider = document.getElementById ('input-slider');

        noUiSlider.create (slider, {
            start: [20],
            connect: 'lower',
            range: {
                'min': 0,
                'max': 100
            }
        });

        slider.noUiSlider.on('update', function( values, handle ) {
            document.getElementById('input-slider-value').value = values[handle];
        });
    }

    // Range
    if($('#input-slider-range')[0]) {
        var sliderRange = document.getElementById ('input-slider-range');
        var sliderRangeUpper = document.getElementById('input-slider-range-value-1');
        var sliderRangeLower = document.getElementById('input-slider-range-value-2');
        var sliderRangeInputs = [sliderRangeUpper, sliderRangeLower]

        noUiSlider.create(sliderRange, {
            start: [20, 80],
            connect: true,
            range: {
                'min': 0,
                'max': 100
            }
        });

        sliderRange.noUiSlider.on('update', function( values, handle ) {
            sliderRangeInputs[handle].value = values[handle];
        });
    }

    // Theme examples
    if($('.input-slider')[0]) {
        var sliderThemes = document.getElementsByClassName('input-slider');

        for ( var i = 0; i < sliderThemes.length; i++ ) {

            noUiSlider.create(sliderThemes[i], {
                start: [20],
                connect: 'lower',
                range: {
                    'min': 0,
                    'max': 100
                }
            });
        }
    }
});

$(document).ready(function () {
    var scrollbar = $('.scrollbar');
    if(scrollbar[0]) {
        scrollbar.overlayScrollbars({
            scrollbars: {
                autoHide: 'l',
                clickScrolling: true
            },
            className: 'os-theme-light'
        });
    }
});

$(document).ready(function () {
    // Bar
    if($('.peity-bar')[0]) {
        $('.peity-bar').each(function() {
            var peityWidth = ($(this).attr('data-width')) ? $(this).attr('data-width') : 65;

            $(this).peity('bar', {
                height: 36,
                fill: ['rgba(255,255,255,0.85)'],
                width: peityWidth,
                padding: 0.2
            });
        });
    }

    // Line
    if($('.peity-line')[0]) {
        $('.peity-line').each(function() {
            var peityWidth = ($(this).attr('data-width')) ? $(this).attr('data-width') : 65;

            $(this).peity('line', {
                height: 50,
                fill: 'rgba(255,255,255,0.8)',
                stroke: 'rgba(255,255,255,0)',
                width: peityWidth,
                padding: 0.2
            });
        });
    }

    // Pie
    if($('.peity-pie')[0]) {
        $('.peity-pie').each(function() {
            $(this).peity('pie', {
                fill: ['#fff', 'rgba(255,255,255,0.6)', 'rgba(255,255,255,0.2)'],
                height: 50,
                width: 50
            });
        });
    }

    // Donut
    if($('.peity-donut')[0]) {
        $('.peity-donut').each(function() {
            $(this).peity('donut', {
                fill: ['#fff', 'rgba(255,255,255,0.6)', 'rgba(255,255,255,0.2)'],
                height: 50,
                width: 50
            });
        });
    }
});

$(document).ready(function () {
    if($('.rating')[0]) {
        $('.rating').each(function () {
            var rating = $(this).data('rating');

            $(this).rateYo({
                rating: rating,
                normalFill: 'rgba(255,255,255,0.3)',
                ratedFill: '#ffc107'
            });
        });
    }
});

$(document).ready(function () {
    if($('select.select2')[0]) {
        var select2parent = $('.select2-parent')[0] ? $('.select2-parent') : $('body');

        $('select.select2').select2({
            dropdownAutoWidth: true,
            width: '100%',
            dropdownParent: select2parent
        });
    }
});

$(document).ready(function(){
    // Basic
    $('#sa-basic').click(function(){
        swal.fire({
            text: 'You clicked the button!',
            background: '#000',
            backdrop: 'rgba(0,0,0,0.2)',
            buttonsStyling: false,
            padding: '3rem 3rem 2rem',
            customClass: {
                confirmButton: 'btn btn-link',
                title: 'ca-title',
                container: 'ca'
            }
        })
    });

    // Title
    $('#sa-basic-title').click(function(){
        swal.fire({
            title: 'Good job!',
            text: 'You clicked the button!',
            background: '#000',
            backdrop: 'rgba(0,0,0,0.2)',
            buttonsStyling: false,
            padding: '3rem 3rem 2rem',
            customClass: {
                confirmButton: 'btn btn-link',
                title: 'ca-title',
                container: 'ca'
            }
        })
    });

    // Footer
    $('#sa-basic-footer').click(function(){
        swal.fire({
            title: 'Good job!',
            text: 'You clicked the button!',
            background: '#000',
            backdrop: 'rgba(0,0,0,0.2)',
            buttonsStyling: false,
            padding: '3rem 3rem 2rem',
            customClass: {
                confirmButton: 'btn btn-link',
                title: 'ca-title',
                container: 'ca'
            },
            footer: '<a href>Why do I have this issue?</a>'
        })
    });

    // Long content
    $('#sa-basic-content').click(function(){
        swal.fire({
            title: 'Good job!',
            text: 'Etiam porta sem malesuada magna mollis euismod. Vestibulum id ligula porta felis euismod semper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Cras mattis consectetur purus sit amet fermentum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam porta sem malesuada magna mollis euismod. Nulla vitae elit libero, a pharetra augue. Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue. Donec ullamcorper nulla non metus auctor fringilla. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Sed posuere consectetur est at lobortis. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.',
            background: '#000',
            backdrop: 'rgba(0,0,0,0.2)',
            buttonsStyling: false,
            padding: '3rem 3rem 2rem',
            customClass: {
                confirmButton: 'btn btn-link',
                container: 'ca'
            }
        })
    });

    // HTML content
    $('#sa-basic-html').click(function(){
        swal.fire({
            title: '<span class="text-green">Good</span> &nbsp;job!',
            html: '<span class="text-red">You</span> clicked this <u>awesome</u> button! <i class="text-yellow zwicon-smile"></i>',
            background: '#000',
            backdrop: 'rgba(0,0,0,0.2)',
            buttonsStyling: false,
            padding: '3rem 3rem 2rem',
            customClass: {
                confirmButton: 'btn btn-link',
                title: 'ca-title',
                container: 'ca'
            }
        })
    });

    // Popup types
    $('.btn-sa-types').on('click', function(){
        var type = $(this).data('type')

        swal.fire({
            type: type.toLowerCase(),
            title: type + '!',
            text: 'You clicked the ' + type.toLowerCase() + ' button!',
            background: '#000',
            backdrop: 'rgba(0,0,0,0.2)',
            buttonsStyling: false,
            padding: '3rem 3rem 2rem',
            customClass: {
                confirmButton: 'btn btn-link',
                title: 'ca-title',
                container: 'ca'
            }
        })
    });

    // Position
    $('.btn-sa-position').on('click', function(){
        var position = $(this).data('position')

        swal.fire({
            position: position,
            title: 'Good job!!',
            text: 'You clicked the right button!',
            background: '#000',
            backdrop: 'rgba(0,0,0,0.2)',
            buttonsStyling: false,
            padding: '3rem 3rem 2rem',
            customClass: {
                confirmButton: 'btn btn-link',
                title: 'ca-title',
                container: 'ca'
            }
        })
    });
});

$(document).ready(function () {
    if($('.wysiwyg-editor')[0]) {
        $('.wysiwyg-editor').trumbowyg({
            autogrow: true
        });
    }
});

$(document).ready(function(){

    if ($('.flot-bar')[0]) {
        // Chart Data
        var barChartData = [
            {
                label: '2015',
                data: [[1,60], [2,30], [3,50], [4,100], [5,10], [6,90], [7,85]],
                bars: {
                    order: 0,
                    fillColor: '#fff'
                },
                color: '#fff'
            },
            {
                label: '2016',
                data: [[1,20], [2,90], [3,60], [4,40], [5,100], [6,25], [7,65]],
                bars: {
                    order: 1,
                    fillColor: 'rgba(255,255,255,0.5)'
                },
                color: 'rgba(255,255,255,0.5)'
            },
            {
                label: '2017',
                data: [[1,100], [2,20], [3,60], [4,90], [5,80], [6,10], [7,5]],
                bars: {
                    order: 2,
                    fillColor: 'rgba(255,255,255,0.15)'
                },
                color: 'rgba(255,255,255,0.15)'
            }
        ];


        // Chart Options
        var barChartOptions = {
            series: {
                bars: {
                    show: true,
                    barWidth: 0.075,
                    fill: 1,
                    lineWidth: 0
                }
            },
            grid : {
                borderWidth: 1,
                borderColor: 'rgba(255,255,255,0.1)',
                show : true,
                hoverable : true,
                clickable : true
            },
            yaxis: {
                tickColor: 'rgba(255,255,255,0.1)',
                tickDecimals: 0,
                font: {
                    lineHeight: 13,
                    style: 'normal',
                    color: 'rgba(255,255,255,0.75)',
                    size: 11
                },
                shadowSize: 0
            },
            xaxis: {
                tickColor: 'rgba(255,255,255,0.1)',
                tickDecimals: 0,
                font: {
                    lineHeight: 13,
                    style: 'normal',
                    color: 'rgba(255,255,255,0.75)',
                    size: 11
                },
                shadowSize: 0
            },
            legend:{
                container: '.flot-chart-legends--bar',
                backgroundOpacity: 0.5,
                noColumns: 0,
                lineWidth: 0,
                labelBoxBorderColor: 'rgba(255,255,255,0)'
            }
        };

        // Create chart
        $.plot($('.flot-bar'), barChartData, barChartOptions);
    }
});


'use strict';

$(document).ready(function() {

    // Tooltips for Flot Charts
    if ($('.flot-chart')[0]) {
        $('.flot-chart').on('plothover', function (event, pos, item) {
            if (item) {
                var x = item.datapoint[0].toFixed(2),
                    y = item.datapoint[1].toFixed(2);
                $('.flot-tooltip').html(item.series.label + ' of ' + x + ' = ' + y).css({top: item.pageY+5, left: item.pageX+5}).show();
            }
            else {
                $('.flot-tooltip').hide();
            }
        });

        $('<div class="flot-tooltip"></div>').appendTo('body');
    }
});


'use strict';

$(document).ready(function(){
    // Chart Data

    // Main
    var curvedLineChartData = [
        {
            label: '2016',
            color: 'rgba(255,255,255,0.08)',
            lines: {
                show: true,
                lineWidth: 0,
                fill: 1,
                fillColor: {
                    colors: ['rgba(255,255,255,0.0)', 'rgba(255,255,255,0.1)']
                }
            },
            data: [[10, 90], [20, 40], [30, 80], [40, 20], [50, 90], [60, 20], [70, 60]],

        },
        {
            label: '2017',
            color: 'rgba(255,255,255,0.8)',
            lines: {
                show: true,
                lineWidth: 0.1,
                fill: 1,
                fillColor: {
                    colors: ['rgba(255,255,255,0.01)', '#fff']
                }
            },
            data: [[10, 80], [20, 30], [30, 70], [40, 10], [50, 80], [60, 10], [70, 50]]
        }
    ];


    // Past Days
    var pastDaysChartData = [{
        label: 'Data',
        stack: true,
        lines: {
            show: true,
            lineWidth: 0,
            fill: 1,
            fillColor: {
                colors: ['rgba(255,255,255,0)', 'rgba(255,255,255,0.3)']
            }
        },
        data: [[10, 90], [20, 40], [30, 80], [40, 20], [50, 90], [60, 20], [70, 60]]
    }];


    // Stats Charts
    var stats1ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: {
                colors: ['rgba(255,255,255,0)', 'rgba(255,255,255,0.35)']
            }
        },
        data: [[10, 100], [20, 10], [30, 90], [40, 20], [50, 60], [60, 20], [70, 60]]
    }];

    var stats2ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: {
                colors: ['rgba(255,255,255,0)', 'rgba(255,255,255,0.35)']
            }
        },
        data: [[10, 0], [20, 30], [30, 30], [40, 90], [50, 0], [60, 20], [70, 60]]
    }];

    var stats3ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: {
                colors: ['rgba(255,255,255,0)', 'rgba(255,255,255,0.35)']
            }
        },
        data: [[10, 100], [20, 30], [30, 50], [40, 30], [50, 20], [60, 10], [70, 100]]
    }];

    var stats4ChartData = [{
        label: 'Data',
        stack: true,
        color: '#fff',
        lines: {
            show: true,
            fill: 1,
            fillColor: {
                colors: ['rgba(255,255,255,0)', 'rgba(255,255,255,0.35)']
            }
        },
        data: [[10, 45], [20, 10], [30, 32], [40, 12], [50, 5], [60, 6], [70, 15]]
    }];


    // Chart Options

    // Main
    var curvedLineChartOptions = {
        series: {
            shadowSize: 0,
            curvedLines: {
                apply: true,
                active: true,
                monotonicFit: true
            },
            points: {
                show: false
            }
        },
        grid: {
            borderWidth: 1,
            borderColor: 'rgba(255,255,255,0.1)',
            show: true,
            hoverable: true,
            clickable: true
        },
        xaxis: {
            tickColor: 'rgba(255,255,255,0.1)',
            tickDecimals: 0,
            font: {
                lineHeight: 13,
                style: 'normal',
                color: 'rgba(255,255,255,0.75)',
                size: 11
            }
        },
        yaxis: {
            tickColor: 'rgba(255,255,255,0.1)',
            font: {
                lineHeight: 13,
                style: 'normal',
                color: 'rgba(255,255,255,0.75)',
                size: 11
            },
            min: +5
        },
        legend:{
            container: '.flot-chart-legends--curved',
            backgroundOpacity: 0.5,
            noColumns: 0,
            lineWidth: 0,
            labelBoxBorderColor: 'rgba(255,255,255,0)'
        }
    };


    // Past days
    var pastDaysChartOptions = {
        series: {
            shadowSize: 0,
            curvedLines: {
                apply: true,
                active: true,
                monotonicFit: true
            },
            lines: {
                show: false,
                lineWidth: 0
            }
        },
        grid: {
            borderWidth: 0,
            labelMargin:10,
            hoverable: true,
            clickable: true,
            mouseActiveRadius:6

        },
        xaxis: {
            tickDecimals: 0,
            ticks: false
        },

        yaxis: {
            tickDecimals: 0,
            ticks: false
        },

        legend: {
            show: false
        }
    };


    // Stats Charts
    var statsChartOptions = {
        series: {
            shadowSize: 0,
            curvedLines: {
                apply: true,
                active: true,
                monotonicFit: true
            },
            lines: {
                show: false,
                lineWidth: 0
            }
        },
        grid: {
            borderWidth: 0,
            labelMargin:10,
            hoverable: true,
            clickable: true,
            mouseActiveRadius:6

        },
        xaxis: {
            tickDecimals: 0,
            ticks: false
        },

        yaxis: {
            tickDecimals: 0,
            ticks: false
        },

        legend: {
            show: false
        }
    };


    // Create charts

    // Main
    if ($('.flot-curved-line')[0]) {
        $.plot($('.flot-curved-line'), curvedLineChartData, curvedLineChartOptions);
    }

    // Past Days
    if ($('.flot-past-days')[0]) {
        $.plot($('.flot-past-days'), pastDaysChartData, pastDaysChartOptions);
    }

    // Stats Charts
    if ($('.stats')[0]) {
        $.plot($('.stats-chart-1'), stats1ChartData, statsChartOptions);
        $.plot($('.stats-chart-2'), stats2ChartData, statsChartOptions);
        $.plot($('.stats-chart-3'), stats3ChartData, statsChartOptions);
        $.plot($('.stats-chart-4'), stats4ChartData, statsChartOptions);
    }
});

'use strict';

$(document).ready(function(){
    function chartUpdate() {
        plot.setData([dynamicChartData()]);
        // Since the axes don't change, we don't need to call plot.setupGrid()

        plot.draw();
        setTimeout(chartUpdate, updateInterval);
    }

    function dynamicChartData() {
        if (data.length > 0)
            data = data.slice(1);

        while (data.length < totalPoints) {

            var prev = data.length > 0 ? data[data.length - 1] : 50,
                y = prev + Math.random() * 10 - 5;
            if (y < 0) {
                y = 0;
            } else if (y > 90) {
                y = 90;
            }

            data.push(y);
        }

        var res = [];
        for (var i = 0; i < data.length; ++i) {
            res.push([i, data[i]])
        }

        return res;
    }

    if ($('.flot-dynamic')[0]) {
        // Chart Data
        var data = [];
        var totalPoints = 300;

        // Chart Options
        var dynamicChartOptions = {
            series: {
                label: "Server Process Data",
                lines: {
                    show: true,
                    lineWidth: 0.2,
                    fill: 1,
                    fillColor: {
                        colors: ['rgba(255,255,255,0.03)', '#fff']
                    }
                },
                color: '#fff',
                shadowSize: 0
            },
            yaxis: {
                min: 0,
                max: 100,
                tickColor: 'rgba(255,255,255,0.1)',
                font: {
                    lineHeight: 13,
                    style: 'normal',
                    color: 'rgba(255,255,255,0.75)',
                    size: 11
                },
                shadowSize: 0

            },
            xaxis: {
                tickColor: 'rgba(255,255,255,0.1)',
                show: true,
                font: {
                    lineHeight: 13,
                    style: 'normal',
                    color: 'rgba(255,255,255,0.75)',
                    size: 11
                },
                shadowSize: 0,
                min: 0,
                max: 250
            },
            grid: {
                borderWidth: 1,
                borderColor: 'rgba(255,255,255,0.1)',
                labelMargin:10,
                hoverable: true,
                clickable: true,
                mouseActiveRadius:6
            },
            legend:{
                container: '.flot-chart-legends--dynamic',
                backgroundOpacity: 0.5,
                noColumns: 0,
                lineWidth: 0,
                labelBoxBorderColor: 'rgba(255,255,255,0)'
            }
        };

        // Create Chart
        var plot = $.plot('.flot-dynamic', [ dynamicChartData() ], dynamicChartOptions);

        // Update function
        var updateInterval = 30;

        chartUpdate();
    }
});

'use strict';

$(document).ready(function(){

    if ($('.flot-line')[0]) {
        // Chart Data
        var lineChartData = [
            {
                label: '2015',
                data: [[1,60], [2,30], [3,50], [4,100], [5,10], [6,90], [7,85]],
                color: '#fff'
            },
            {
                label: '2016',
                data: [[1,20], [2,90], [3,60], [4,40], [5,100], [6,25], [7,65]],
                color: 'rgba(255,255,255,0.5)'
            },
            {
                label: '2017',
                data: [[1,100], [2,20], [3,60], [4,90], [5,80], [6,10], [7,5]],
                color: 'rgba(255,255,255,0.15)'
            }
        ];

        // Chart Options
        var lineChartOptions = {
            series: {
                lines: {
                    show: true,
                    barWidth: 0.05,
                    fill: 0
                }
            },
            shadowSize: 0.1,
            grid : {
                borderWidth: 1,
                borderColor: 'rgba(255,255,255,0.1)',
                show : true,
                hoverable : true,
                clickable : true
            },
            yaxis: {
                tickColor: 'rgba(255,255,255,0.1)',
                tickDecimals: 0,
                font: {
                    lineHeight: 13,
                    style: 'normal',
                    color: 'rgba(255,255,255,0.75)',
                    size: 11
                },
                shadowSize: 0
            },

            xaxis: {
                tickColor: 'rgba(255,255,255,0.1)',
                tickDecimals: 0,
                font: {
                    lineHeight: 13,
                    style: 'normal',
                    color: 'rgba(255,255,255,0.75)',
                    size: 11
                },
                shadowSize: 0
            },
            legend:{
                container: '.flot-chart-legends--line',
                backgroundOpacity: 0.5,
                noColumns: 0,
                lineWidth: 0,
                labelBoxBorderColor: 'rgba(255,255,255,0)'
            }
        };

        // Create chart
        $.plot($('.flot-line'), lineChartData, lineChartOptions);
    }
});


'use strict';

$(document).ready(function(){
    // Make some sample data
    var pieData = [
        {data: 1, color: 'rgba(255,255,255,0.25)', label: 'Toyota'},
        {data: 2, color: 'rgba(255,255,255,0.5)', label: 'Nissan'},
        {data: 3, color: 'rgba(255,255,255,0.75)', label: 'Hyundai'},
        {data: 5, color: '#fff', label: 'Daihatsu'}
    ];
    
    // Pie Chart
    if($('.flot-pie')[0]){
        $.plot('.flot-pie', pieData, {
            series: {
                pie: {
                    show: true,
                    stroke: {
                        width: 0
                    }
                }
            },
            legend: {
                container: '.flot-chart-legend--pie',
                noColumns: 0,
                lineWidth: 0,
                labelBoxBorderColor: 'rgba(255,255,255,0)'
            }
        });
    }
    
    // Donut Chart
    if($('.flot-donut')[0]){
        $.plot('.flot-donut', pieData, {
            series: {
                pie: {
                    innerRadius: 0.5,
                    show: true,
                    stroke: { 
                        width: 0
                    }
                }
            },
            legend: {
                container: '.flot-chart-legend--donut',
                noColumns: 0,
                lineWidth: 0,
                labelBoxBorderColor: 'rgba(255,255,255,0)'
            }
        });
    }
});