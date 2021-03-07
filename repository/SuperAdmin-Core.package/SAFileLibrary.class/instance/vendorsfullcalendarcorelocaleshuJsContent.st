uploaded
vendorsfullcalendarcorelocaleshuJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.hu = factory()));
}(this, function () { ''use strict'';

    var hu = {
        code: "hu",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "vissza",
            next: "elÅre",
            today: "ma",
            month: "HÃ³nap",
            week: "HÃ©t",
            day: "Nap",
            list: "NaplÃ³"
        },
        weekLabel: "HÃ©t",
        allDayText: "EgÃ©sz nap",
        eventLimitText: "tovÃ¡bbi",
        noEventsMessage: "Nincs megjelenÃ­thetÅ esemÃ©ny"
    };

    return hu;

}));
'