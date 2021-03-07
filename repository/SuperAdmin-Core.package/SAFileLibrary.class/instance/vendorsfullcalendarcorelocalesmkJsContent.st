uploaded
vendorsfullcalendarcorelocalesmkJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.mk = factory()));
}(this, function () { ''use strict'';

    var mk = {
        code: "mk",
        buttonText: {
            prev: "Ð¿ÑÐµÑÑÐ¾Ð´Ð½Ð¾",
            next: "ÑÐ»ÐµÐ´Ð½Ð¾",
            today: "ÐÐµÐ½ÐµÑ",
            month: "ÐÐµÑÐµÑ",
            week: "ÐÐµÐ´ÐµÐ»Ð°",
            day: "ÐÐµÐ½",
            list: "ÐÑÐ°ÑÐ¸Ðº"
        },
        weekLabel: "Ð¡ÐµÐ´",
        allDayText: "Ð¦ÐµÐ» Ð´ÐµÐ½",
        eventLimitText: function (n) {
            return "+Ð¿Ð¾Ð²ÐµÑÐµ " + n;
        },
        noEventsMessage: "ÐÐµÐ¼Ð° Ð½Ð°ÑÑÐ°Ð½Ð¸ Ð·Ð° Ð¿ÑÐ¸ÐºÐ°Ð¶ÑÐ²Ð°ÑÐµ"
    };

    return mk;

}));
'