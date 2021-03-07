uploaded
vendorsfullcalendarcorelocalesbgJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.bg = factory()));
}(this, function () { ''use strict'';

    var bg = {
        code: "bg",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "Ð½Ð°Ð·Ð°Ð´",
            next: "Ð½Ð°Ð¿ÑÐµÐ´",
            today: "Ð´Ð½ÐµÑ",
            month: "ÐÐµÑÐµÑ",
            week: "Ð¡ÐµÐ´Ð¼Ð¸ÑÐ°",
            day: "ÐÐµÐ½",
            list: "ÐÑÐ°ÑÐ¸Ðº"
        },
        allDayText: "Ð¦ÑÐ» Ð´ÐµÐ½",
        eventLimitText: function (n) {
            return "+Ð¾ÑÐµ " + n;
        },
        noEventsMessage: "ÐÑÐ¼Ð° ÑÑÐ±Ð¸ÑÐ¸Ñ Ð·Ð° Ð¿Ð¾ÐºÐ°Ð·Ð²Ð°Ð½Ðµ"
    };

    return bg;

}));
'