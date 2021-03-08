rendering-topNav
renderTopNavOn: canvas
  canvas unorderedList
    class: 'top-nav';
    with: [ 
          self renderSearchEnableTopNavOn: canvas.
          self renderNotificationsTopNavOn: canvas.
          self renderThemeSelectorTopNavOn: canvas ].
  self renderClockOn: canvas