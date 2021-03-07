uploaded
vendorsfullcalendarcorelocalesglJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.gl = factory()));
}(this, function () { ''use strict'';

    var gl = {
        code: "gl",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prevText: "Ant",
            nextText: "Seg",
            currentText: "Hoxe",
            month: "Mes",
            week: "Semana",
            day: "DÃ­a",
            list: "Axenda"
        },
        weekLabel: "Sm",
        allDayHtml: "Todo<br/>o dÃ­a",
        eventLimitText: "mÃ¡is",
        noEventsMessage: "Non hai eventos para amosar"
    };

    return gl;

}));
'