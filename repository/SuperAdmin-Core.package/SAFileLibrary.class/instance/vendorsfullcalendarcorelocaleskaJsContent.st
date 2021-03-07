uploaded
vendorsfullcalendarcorelocaleskaJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.ka = factory()));
}(this, function () { ''use strict'';

    var ka = {
        code: "ka",
        week: {
            dow: 1,
            doy: 7
        },
        buttonText: {
            prev: "á¬ááá",
            next: "á¨áááááá",
            today: "áá¦áá¡",
            month: "ááá",
            week: "áááá á",
            day: "áá¦á",
            list: "áá¦áá¡ á¬áá¡á ááá"
        },
        weekLabel: "áá",
        allDayText: "ááááá áá¦á",
        eventLimitText: function (n) {
            return "+ ááááá " + n;
        },
        noEventsMessage: "á¦áááá¡á«áááááá áá  áá áá¡"
    };

    return ka;

}));
'