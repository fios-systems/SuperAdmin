uploaded
vendorsfullcalendarcorelocalesltJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.lt = factory()));
}(this, function () { ''use strict'';

    var lt = {
        code: "lt",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "Atgal",
            next: "Pirmyn",
            today: "Å iandien",
            month: "MÄnuo",
            week: "SavaitÄ",
            day: "Diena",
            list: "DarbotvarkÄ"
        },
        weekLabel: "SAV",
        allDayText: "VisÄ dienÄ",
        eventLimitText: "daugiau",
        noEventsMessage: "NÄra Ä¯vykiÅ³ rodyti"
    };

    return lt;

}));
'