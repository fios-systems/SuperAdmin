Updating
updateRoot: anHtmlRoot
  anHtmlRoot bodyAttributes at: 'data-sa-theme' put: self themeIndex.
  anHtmlRoot meta
    name: 'viewport';
    content: 'width=device-width, initial-scale=1, shrink-to-fit=no'.
  anHtmlRoot title: self title.
  anHtmlRoot stylesheet url: SAFileLibrary / #'vendorszwiconzwiconCss'.
  anHtmlRoot stylesheet url: SAFileLibrary / #'vendorsanimatecssanimateCss'.
  anHtmlRoot stylesheet
    url: SAFileLibrary / #'vendorsoverlayscrollbarsOverlayScrollbarsCss'.
  anHtmlRoot stylesheet url: 'https://use.typekit.net/ozg0uqo.css'.
  anHtmlRoot stylesheet url: SAFileLibrary / #'cssappCss'