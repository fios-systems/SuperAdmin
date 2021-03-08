rendering-header
renderHeaderOn: canvas
  canvas header
    class: 'header';
    with: [ 
          self renderHeaderNavigationTriggerOn: canvas.
          self renderHeaderLogoOn: canvas.
          self renderSearchOn: canvas.
          self renderTopNavOn: canvas ]