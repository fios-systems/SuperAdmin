uploaded
vendorsfullcalendarcorelocalesjaJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.ja = factory()));
}(this, function () { ''use strict'';

    var ja = {
        code: "ja",
        buttonText: {
            prev: "å",
            next: "æ¬¡",
            today: "ä»æ¥",
            month: "æ",
            week: "é±",
            day: "æ¥",
            list: "äºå®ãªã¹ã"
        },
        weekLabel: "é±",
        allDayText: "çµæ¥",
        eventLimitText: function (n) {
            return "ä» " + n + " ä»¶";
        },
        noEventsMessage: "è¡¨ç¤ºããäºå®ã¯ããã¾ãã"
    };

    return ja;

}));
'