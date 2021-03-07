uploaded
vendorsfullcalendarcorelocalesetJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.et = factory()));
}(this, function () { ''use strict'';

    var et = {
        code: "et",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "Eelnev",
            next: "JÃ¤rgnev",
            today: "TÃ¤na",
            month: "Kuu",
            week: "NÃ¤dal",
            day: "PÃ¤ev",
            list: "PÃ¤evakord"
        },
        weekLabel: "nÃ¤d",
        allDayText: "Kogu pÃ¤ev",
        eventLimitText: function (n) {
            return "+ veel " + n;
        },
        noEventsMessage: "Kuvamiseks puuduvad sÃ¼ndmused"
    };

    return et;

}));
'