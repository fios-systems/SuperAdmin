uploaded
vendorsfullcalendarcorelocalestrJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.tr = factory()));
}(this, function () { ''use strict'';

    var tr = {
        code: "tr",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "geri",
            next: "ileri",
            today: "bugÃ¼n",
            month: "Ay",
            week: "Hafta",
            day: "GÃ¼n",
            list: "Ajanda"
        },
        weekLabel: "Hf",
        allDayText: "TÃ¼m gÃ¼n",
        eventLimitText: "daha fazla",
        noEventsMessage: "GÃ¶sterilecek etkinlik yok"
    };

    return tr;

}));
'