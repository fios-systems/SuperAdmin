uploaded
vendorsfullcalendarcorelocaleshiJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.hi = factory()));
}(this, function () { ''use strict'';

    var hi = {
        code: "hi",
        week: {
            dow: 0,
            doy: 6 // The week that contains Jan 1st is the first week of the year.
        },
        buttonText: {
            prev: "à¤ªà¤¿à¤à¤²à¤¾",
            next: "à¤à¤à¤²à¤¾",
            today: "à¤à¤",
            month: "à¤®à¤¹à¥à¤¨à¤¾",
            week: "à¤¸à¤ªà¥à¤¤à¤¾à¤¹",
            day: "à¤¦à¤¿à¤¨",
            list: "à¤à¤¾à¤°à¥à¤¯à¤¸à¥à¤à¥"
        },
        weekLabel: "à¤¹à¤«à¥à¤¤à¤¾",
        allDayText: "à¤¸à¤­à¥ à¤¦à¤¿à¤¨",
        eventLimitText: function (n) {
            return "+à¤à¤§à¤¿à¤ " + n;
        },
        noEventsMessage: "à¤à¥à¤ à¤à¤à¤¨à¤¾à¤à¤ à¤à¥ à¤ªà¥à¤°à¤¦à¤°à¥à¤¶à¤¿à¤¤ à¤à¤°à¤¨à¥ à¤à¥ à¤²à¤¿à¤"
    };

    return hi;

}));
'