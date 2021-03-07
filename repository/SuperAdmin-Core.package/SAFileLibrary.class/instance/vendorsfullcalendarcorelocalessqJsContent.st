uploaded
vendorsfullcalendarcorelocalessqJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.sq = factory()));
}(this, function () { ''use strict'';

    var sq = {
        code: "sq",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "mbrapa",
            next: "PÃ«rpara",
            today: "sot",
            month: "Muaj",
            week: "JavÃ«",
            day: "DitÃ«",
            list: "ListÃ«"
        },
        weekLabel: "Ja",
        allDayHtml: "GjithÃ«<br/>ditÃ«n",
        eventLimitText: function (n) {
            return "+mÃ« tepÃ«r " + n;
        },
        noEventsMessage: "Nuk ka evente pÃ«r tÃ« shfaqur"
    };

    return sq;

}));
'