uploaded
vendorsfullcalendarcorelocalesruJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.ru = factory()));
}(this, function () { ''use strict'';

    var ru = {
        code: "ru",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "ÐÑÐµÐ´",
            next: "Ð¡Ð»ÐµÐ´",
            today: "Ð¡ÐµÐ³Ð¾Ð´Ð½Ñ",
            month: "ÐÐµÑÑÑ",
            week: "ÐÐµÐ´ÐµÐ»Ñ",
            day: "ÐÐµÐ½Ñ",
            list: "ÐÐ¾Ð²ÐµÑÑÐºÐ° Ð´Ð½Ñ"
        },
        weekLabel: "ÐÐµÐ´",
        allDayText: "ÐÐµÑÑ Ð´ÐµÐ½Ñ",
        eventLimitText: function (n) {
            return "+ ÐµÑÑ " + n;
        },
        noEventsMessage: "ÐÐµÑ ÑÐ¾Ð±ÑÑÐ¸Ð¹ Ð´Ð»Ñ Ð¾ÑÐ¾Ð±ÑÐ°Ð¶ÐµÐ½Ð¸Ñ"
    };

    return ru;

}));
'