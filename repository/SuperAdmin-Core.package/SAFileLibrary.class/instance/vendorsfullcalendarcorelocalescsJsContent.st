uploaded
vendorsfullcalendarcorelocalescsJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.cs = factory()));
}(this, function () { ''use strict'';

    var cs = {
        code: "cs",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "DÅÃ­ve",
            next: "PozdÄji",
            today: "NynÃ­",
            month: "MÄsÃ­c",
            week: "TÃ½den",
            day: "Den",
            list: "Agenda"
        },
        weekLabel: "TÃ½d",
        allDayText: "CelÃ½ den",
        eventLimitText: function (n) {
            return "+dalÅ¡Ã­: " + n;
        },
        noEventsMessage: "Å½Ã¡dnÃ© akce k zobrazenÃ­"
    };

    return cs;

}));
'