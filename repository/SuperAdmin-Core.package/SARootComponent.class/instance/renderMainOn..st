rendering
renderMainOn: canvas
  canvas main
    class: 'main';
    with: [ 
          self renderHeaderOn: canvas.
          self renderThemeSelectorOn: canvas.
          self renderSidebarOn: canvas ]