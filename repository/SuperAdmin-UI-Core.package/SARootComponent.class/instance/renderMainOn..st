rendering
renderMainOn: canvas
  canvas main
    class: 'main container';
    with: [ 
          self renderHeaderOn: canvas.
          self renderThemeSelectorOn: canvas.
          self renderSidebarOn: canvas ]