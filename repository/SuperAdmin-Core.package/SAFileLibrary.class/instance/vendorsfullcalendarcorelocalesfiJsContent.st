uploaded
vendorsfullcalendarcorelocalesfiJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.fi = factory()));
}(this, function () { ''use strict'';

    var fi = {
        code: "fi",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "Edellinen",
            next: "Seuraava",
            today: "TÃ¤nÃ¤Ã¤n",
            month: "Kuukausi",
            week: "Viikko",
            day: "PÃ¤ivÃ¤",
            list: "Tapahtumat"
        },
        weekLabel: "Vk",
        allDayText: "Koko pÃ¤ivÃ¤",
        eventLimitText: "lisÃ¤Ã¤",
        noEventsMessage: "Ei nÃ¤ytettÃ¤viÃ¤ tapahtumia"
    };

    return fi;

}));
'