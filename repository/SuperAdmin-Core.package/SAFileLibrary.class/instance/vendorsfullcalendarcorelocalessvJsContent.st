uploaded
vendorsfullcalendarcorelocalessvJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.sv = factory()));
}(this, function () { ''use strict'';

    var sv = {
        code: "sv",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "FÃ¶rra",
            next: "NÃ¤sta",
            today: "Idag",
            month: "MÃ¥nad",
            week: "Vecka",
            day: "Dag",
            list: "Program"
        },
        weekLabel: "v.",
        allDayText: "Heldag",
        eventLimitText: "till",
        noEventsMessage: "Inga hÃ¤ndelser att visa"
    };

    return sv;

}));
'