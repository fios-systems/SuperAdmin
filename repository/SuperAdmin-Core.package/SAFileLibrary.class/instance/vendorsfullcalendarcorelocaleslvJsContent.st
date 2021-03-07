uploaded
vendorsfullcalendarcorelocaleslvJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.lv = factory()));
}(this, function () { ''use strict'';

    var lv = {
        code: "lv",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "Iepr.",
            next: "NÄk.",
            today: "Å odien",
            month: "MÄnesis",
            week: "NedÄÄ¼a",
            day: "Diena",
            list: "Dienas kÄrtÄ«ba"
        },
        weekLabel: "Ned.",
        allDayText: "Visu dienu",
        eventLimitText: function (n) {
            return "+vÄl " + n;
        },
        noEventsMessage: "Nav notikumu"
    };

    return lv;

}));
'