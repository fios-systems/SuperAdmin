uploaded
vendorsfullcalendarcorelocalessrJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.sr = factory()));
}(this, function () { ''use strict'';

    var sr = {
        code: "sr",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "Prethodna",
            next: "SledecÌi",
            today: "Danas",
            month: "MÐµsÐµc",
            week: "NÐµdÐµlja",
            day: "Dan",
            list: "PlanÐµr"
        },
        weekLabel: "Sed",
        allDayText: "CÐµo dan",
        eventLimitText: function (n) {
            return "+ joÅ¡ " + n;
        },
        noEventsMessage: "NÐµma dogaÄaja za prikaz"
    };

    return sr;

}));
'