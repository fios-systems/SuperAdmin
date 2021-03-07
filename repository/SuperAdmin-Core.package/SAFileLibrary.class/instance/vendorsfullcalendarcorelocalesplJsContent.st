uploaded
vendorsfullcalendarcorelocalesplJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.pl = factory()));
}(this, function () { ''use strict'';

    var pl = {
        code: "pl",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "Poprzedni",
            next: "NastÄpny",
            today: "DziÅ",
            month: "MiesiÄc",
            week: "TydzieÅ",
            day: "DzieÅ",
            list: "Plan dnia"
        },
        weekLabel: "Tydz",
        allDayText: "CaÅy dzieÅ",
        eventLimitText: "wiÄcej",
        noEventsMessage: "Brak wydarzeÅ do wyÅwietlenia"
    };

    return pl;

}));
'