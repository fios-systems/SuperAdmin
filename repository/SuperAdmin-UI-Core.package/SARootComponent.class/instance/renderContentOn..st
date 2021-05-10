rendering
renderContentOn: canvas
  showLoadingScreen
    ifTrue: [ 
      self renderPageLoaderOn: canvas.
      showLoadingScreen := false ].
  self session isLoggedIn
    ifFalse: [ 
      self session isLocked
        ifTrue: [ canvas render: self lockComponent ]
        ifFalse: [ canvas render: self loginComponent ] ]
    ifTrue: [ self renderMainOn: canvas ].
  self
    renderSupportForAjaxErrorHandlerOn: canvas;
    renderUserLockTimerScriptOn: canvas;
    renderJavascriptResourcesOn: canvas