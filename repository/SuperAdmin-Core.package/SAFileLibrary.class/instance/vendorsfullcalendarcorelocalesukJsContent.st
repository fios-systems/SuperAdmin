uploaded
vendorsfullcalendarcorelocalesukJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.uk = factory()));
}(this, function () { ''use strict'';

    var uk = {
        code: "uk",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "ÐÐ¾Ð¿ÐµÑÐµÐ´Ð½ÑÐ¹",
            next: "Ð´Ð°Ð»Ñ",
            today: "Ð¡ÑÐ¾Ð³Ð¾Ð´Ð½Ñ",
            month: "ÐÑÑÑÑÑ",
            week: "Ð¢Ð¸Ð¶Ð´ÐµÐ½Ñ",
            day: "ÐÐµÐ½Ñ",
            list: "ÐÐ¾ÑÑÐ´Ð¾Ðº Ð´ÐµÐ½Ð½Ð¸Ð¹"
        },
        weekLabel: "Ð¢Ð¸Ð¶",
        allDayText: "Ð£Ð²ÐµÑÑ Ð´ÐµÐ½Ñ",
        eventLimitText: function (n) {
            return "+ÑÐµ " + n + "...";
        },
        noEventsMessage: "ÐÐµÐ¼Ð°Ñ Ð¿Ð¾Ð´ÑÐ¹ Ð´Ð»Ñ Ð²ÑÐ´Ð¾Ð±ÑÐ°Ð¶ÐµÐ½Ð½Ñ"
    };

    return uk;

}));
'