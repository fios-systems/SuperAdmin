uploaded
vendorsfullcalendarcorelocaleszhcnJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales[''zh-cn''] = factory()));
}(this, function () { ''use strict'';

    var zhCn = {
        code: "zh-cn",
        week: {
            // GB/T 7408-1994ãæ°æ®ååäº¤æ¢æ ¼å¼Â·ä¿¡æ¯äº¤æ¢Â·æ¥æåæ¶é´è¡¨ç¤ºæ³ãä¸ISO 8601:1988ç­æ
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prev: "ä¸æ",
            next: "ä¸æ",
            today: "ä»å¤©",
            month: "æ",
            week: "å¨",
            day: "æ¥",
            list: "æ¥ç¨"
        },
        weekLabel: "å¨",
        allDayText: "å¨å¤©",
        eventLimitText: function (n) {
            return "å¦å¤ " + n + " ä¸ª";
        },
        noEventsMessage: "æ²¡æäºä»¶æ¾ç¤º"
    };

    return zhCn;

}));
'