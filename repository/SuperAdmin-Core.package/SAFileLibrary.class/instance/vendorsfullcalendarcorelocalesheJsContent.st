uploaded
vendorsfullcalendarcorelocalesheJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.he = factory()));
}(this, function () { ''use strict'';

    var he = {
        code: "he",
        dir: ''rtl'',
        buttonText: {
            prev: "××§×××",
            next: "×××",
            today: "××××",
            month: "××××©",
            week: "×©×××¢",
            day: "×××",
            list: "×¡××¨ ×××"
        },
        allDayText: "×× ××××",
        eventLimitText: "×××¨",
        noEventsMessage: "××× ×××¨××¢×× ×××¦××",
        weekLabel: "×©×××¢"
    };

    return he;

}));
'