rendering
renderContentOn: canvas
  canvas main
    class: 'main';
    with: [ 
          self renderPageLoaderOn: canvas.
          self renderHeaderOn: canvas.
          self renderThemeSelectorOn: canvas.
          self renderSidebarOn: canvas ].
  self renderJavascriptResourcesOn: canvas