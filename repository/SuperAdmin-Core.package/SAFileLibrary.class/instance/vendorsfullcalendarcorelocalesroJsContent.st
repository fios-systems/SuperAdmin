uploaded
vendorsfullcalendarcorelocalesroJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.ro = factory()));
}(this, function () { ''use strict'';

    var ro = {
        code: "ro",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "precedentÄ",
            next: "urmÄtoare",
            today: "Azi",
            month: "LunÄ",
            week: "SÄptÄmÃ¢nÄ",
            day: "Zi",
            list: "AgendÄ"
        },
        weekLabel: "SÄpt",
        allDayText: "ToatÄ ziua",
        eventLimitText: function (n) {
            return "+alte " + n;
        },
        noEventsMessage: "Nu existÄ evenimente de afiÈat"
    };

    return ro;

}));
'