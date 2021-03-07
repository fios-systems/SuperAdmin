uploaded
vendorsfullcalendarcorelocalesfrcaJsContent
	^ '(function (global, factory) {
    typeof exports === ''object'' && typeof module !== ''undefined'' ? module.exports = factory() :
    typeof define === ''function'' && define.amd ? define(factory) :
    (global = global || self, (global.FullCalendarLocales = global.FullCalendarLocales || {}, global.FullCalendarLocales[''fr-ca''] = factory()));
}(this, function () { ''use strict'';

    var frCa = {
        code: "fr",
        buttonText: {
            prev: "PrÃ©cÃ©dent",
            next: "Suivant",
            today: "Aujourd''hui",
            year: "AnnÃ©e",
            month: "Mois",
            week: "Semaine",
            day: "Jour",
            list: "Mon planning"
        },
        weekLabel: "Sem.",
        allDayHtml: "Toute la<br/>journÃ©e",
        eventLimitText: "en plus",
        noEventsMessage: "Aucun Ã©vÃ©nement Ã  afficher"
    };

    return frCa;

}));
'