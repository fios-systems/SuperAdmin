uploaded
vendorsfullcalendarcorelocalessrcyrlJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales[''sr-cyrl''] = factory()));
}(this, function () { ''use strict'';

    var srCyrl = {
        code: "sr-cyrl",
        week: {
            dow: 1,
            doy: 7 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "ÐÑÐµÑÑÐ¾Ð´Ð½Ð°",
            next: "ÑÐ»ÐµÐ´ÐµÑÐ¸",
            today: "ÐÐ°Ð½Ð°Ñ",
            month: "ÐÐµÑÐµÑ",
            week: "ÐÐµÐ´ÐµÑÐ°",
            day: "ÐÐ°Ð½",
            list: "ÐÐ»Ð°Ð½ÐµÑ"
        },
        weekLabel: "Ð¡ÐµÐ´",
        allDayText: "Ð¦ÐµÐ¾ Ð´Ð°Ð½",
        eventLimitText: function (n) {
            return "+ ÑÐ¾Ñ " + n;
        },
        noEventsMessage: "ÐÐµÐ¼Ð° Ð´Ð¾Ð³Ð°ÑÐ°ÑÐ° Ð·Ð° Ð¿ÑÐ¸ÐºÐ°Ð·"
    };

    return srCyrl;

}));
'