uploaded
vendorsfullcalendarcorelocaleskkJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.kk = factory()));
}(this, function () { ''use strict'';

    var kk = {
        code: "kk",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "ÐÐ»Ð´ÑÒ£ÒÑ",
            next: "ÐÐµÐ»ÐµÑÑ",
            today: "ÐÒ¯Ð³ÑÐ½",
            month: "ÐÐ¹",
            week: "ÐÐ¿ÑÐ°",
            day: "ÐÒ¯Ð½",
            list: "ÐÒ¯Ð½ ÑÓÑÑÑÐ±Ñ"
        },
        weekLabel: "ÐÐµ",
        allDayText: "ÐÒ¯Ð½Ñ Ð±Ð¾Ð¹Ñ",
        eventLimitText: function (n) {
            return "+ ÑÐ°ÒÑ " + n;
        },
        noEventsMessage: "ÐÓ©ÑÑÐµÑÑ Ò¯ÑÑÐ½ Ð¾ÒÐ¸ÒÐ°Ð»Ð°Ñ Ð¶Ð¾Ò"
    };

    return kk;

}));
'