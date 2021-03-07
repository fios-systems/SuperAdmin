uploaded
vendorsfullcalendarcorelocalesarsaJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales[''ar-sa''] = factory()));
}(this, function () { ''use strict'';

    var arSa = {
        code: "ar-sa",
        week: {
            dow: 0,
            doy: 6 // The week that contains Jan 1st is the first week of the year.
        },
        dir: ''rtl'',
        buttonText: {
            prev: "Ø§ÙØ³Ø§Ø¨Ù",
            next: "Ø§ÙØªØ§ÙÙ",
            today: "Ø§ÙÙÙÙ",
            month: "Ø´ÙØ±",
            week: "Ø£Ø³Ø¨ÙØ¹",
            day: "ÙÙÙ",
            list: "Ø£Ø¬ÙØ¯Ø©"
        },
        weekLabel: "Ø£Ø³Ø¨ÙØ¹",
        allDayText: "Ø§ÙÙÙÙ ÙÙÙ",
        eventLimitText: "Ø£Ø®Ø±Ù",
        noEventsMessage: "Ø£Ù Ø£Ø­Ø¯Ø§Ø« ÙØ¹Ø±Ø¶"
    };

    return arSa;

}));
'