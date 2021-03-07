uploaded
vendorsfullcalendarcorelocalesfaJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.fa = factory()));
}(this, function () { ''use strict'';

    var fa = {
        code: "fa",
        week: {
            dow: 6,
            doy: 12 // The week that contains Jan 1st is the first week of the year.
        },
        dir: ''rtl'',
        buttonText: {
            prev: "ÙØ¨ÙÛ",
            nex: "Ø¨Ø¹Ø¯Û",
            today: "Ø§ÙØ±ÙØ²",
            month: "ÙØ§Ù",
            week: "ÙÙØªÙ",
            day: "Ø±ÙØ²",
            list: "Ø¨Ø±ÙØ§ÙÙ"
        },
        weekLabel: "ÙÙ",
        allDayText: "ØªÙØ§Ù Ø±ÙØ²",
        eventLimitText: function (n) {
            return "Ø¨ÛØ´ Ø§Ø² " + n;
        },
        noEventsMessage: "ÙÛÚ Ø±ÙÛØ¯Ø§Ø¯Û Ø¨Ù ÙÙØ§ÛØ´"
    };

    return fa;

}));
'