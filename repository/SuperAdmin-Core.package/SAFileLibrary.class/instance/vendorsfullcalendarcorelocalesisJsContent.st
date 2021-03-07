uploaded
vendorsfullcalendarcorelocalesisJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.is = factory()));
}(this, function () { ''use strict'';

    var is = {
        code: "is",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "Fyrri",
            next: "NÃ¦sti",
            today: "Ã dag",
            month: "MÃ¡nuÃ°ur",
            week: "Vika",
            day: "Dagur",
            list: "DagskrÃ¡"
        },
        weekLabel: "Vika",
        allDayHtml: "Allan<br/>daginn",
        eventLimitText: "meira",
        noEventsMessage: "Engir viÃ°burÃ°ir til aÃ° sÃ½na"
    };

    return is;

}));
'