uploaded
vendorsfullcalendarcorelocalesptJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales.pt = factory()));
}(this, function () { ''use strict'';

    var pt = {
        code: "pt",
        week: {
            dow: 1,
            doy: 4 // The week that contains Jan 4th is the first week of the year.
        },
        buttonText: {
            prevText: "Anterior",
            nextText: "Seguinte",
            currentText: "Hoje",
            month: "MÃªs",
            week: "Semana",
            day: "Dia",
            list: "Agenda"
        },
        weekLabel: "Sem",
        allDayText: "Todo o dia",
        eventLimitText: "mais",
        noEventsMessage: "NÃ£o hÃ¡ eventos para mostrar"
    };

    return pt;

}));
'