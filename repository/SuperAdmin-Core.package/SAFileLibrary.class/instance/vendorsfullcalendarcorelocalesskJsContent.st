uploaded
vendorsfullcalendarcorelocalesskJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.sk = factory()));
}(this, function () { ''use strict'';

    var sk = {
        code: "sk",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "PredchÃ¡dzajÃºci",
            next: "NasledujÃºci",
            today: "Dnes",
            month: "Mesiac",
            week: "TÃ½Å¾deÅ",
            day: "DeÅ",
            list: "Rozvrh"
        },
        weekLabel: "Ty",
        allDayText: "CelÃ½ deÅ",
        eventLimitText: function (n) {
            return "+ÄalÅ¡ie: " + n;
        },
        noEventsMessage: "Å½iadne akcie na zobrazenie"
    };

    return sk;

}));
'