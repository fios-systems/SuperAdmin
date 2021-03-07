uploaded
vendorsfullcalendarcorelocaleselJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.el = factory()));
}(this, function () { ''use strict'';

    var el = {
        code: "el",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4st is the first week of the year.
        },
        buttonText: {
            prev: "Î ÏÎ¿Î·Î³Î¿ÏÎ¼ÎµÎ½Î¿Ï",
            next: "ÎÏÏÎ¼ÎµÎ½Î¿Ï",
            today: "Î£Î®Î¼ÎµÏÎ±",
            month: "ÎÎ®Î½Î±Ï",
            week: "ÎÎ²Î´Î¿Î¼Î¬Î´Î±",
            day: "ÎÎ¼Î­ÏÎ±",
            list: "ÎÏÎ¶Î­Î½ÏÎ±"
        },
        weekLabel: "ÎÎ²Î´",
        allDayText: "ÎÎ»Î¿Î®Î¼ÎµÏÎ¿",
        eventLimitText: "ÏÎµÏÎ¹ÏÏÏÏÎµÏÎ±",
        noEventsMessage: "ÎÎµÎ½ ÏÏÎ¬ÏÏÎ¿ÏÎ½ Î³ÎµÎ³Î¿Î½ÏÏÎ± Î³Î¹Î± Î½Î± ÎµÎ¼ÏÎ±Î½Î¹ÏÏÎµÎ¯"
    };

    return el;

}));
'