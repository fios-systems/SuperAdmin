uploaded
vendorsfullcalendarcorelocaleshrJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.hr = factory()));
}(this, function () { ''use strict'';

    var hr = {
        code: "hr",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "PrijaÅ¡nji",
            next: "SljedeÄi",
            today: "Danas",
            month: "Mjesec",
            week: "Tjedan",
            day: "Dan",
            list: "Raspored"
        },
        weekLabel: "Tje",
        allDayText: "Cijeli dan",
        eventLimitText: function (n) {
            return "+ joÅ¡ " + n;
        },
        noEventsMessage: "Nema dogaÄaja za prikaz"
    };

    return hr;

}));
'