uploaded
vendorsfullcalendarcorelocaleslbJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.lb = factory()));
}(this, function () { ''use strict'';

    var lb = {
        code: "lb",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "ZrÃ©ck",
            next: "Weider",
            today: "Haut",
            month: "Mount",
            week: "Woch",
            day: "Dag",
            list: "Terminiwwersiicht"
        },
        weekLabel: "W",
        allDayText: "Ganzen Dag",
        eventLimitText: "mÃ©i",
        noEventsMessage: "Nee Evenementer ze affichÃ©ieren"
    };

    return lb;

}));
'