uploaded
vendorsfullcalendarcorelocalesviJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.vi = factory()));
}(this, function () { ''use strict'';

    var vi = {
        code: "vi",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "TrÆ°á»c",
            next: "Tiáº¿p",
            today: "HÃ´m nay",
            month: "ThÃ¡ng",
            week: "TuÃ¢Ìn",
            day: "NgÃ y",
            list: "Lá»ch biá»u"
        },
        weekLabel: "Tu",
        allDayText: "Cáº£ ngÃ y",
        eventLimitText: function (n) {
            return "+ thÃªm " + n;
        },
        noEventsMessage: "KhÃ´ng cÃ³ sá»± kiá»n Äá» hiá»n thá»"
    };

    return vi;

}));
'