rendering-topNav
renderTopNavOn: canvas
  canvas unorderedList
    class: 'nav top-nav';
    with: [ 
          self renderSearchEnableTopNavOn: canvas.
          self renderNotificationsTopNavOn: canvas.
          self renderThemeSelectorTopNavOn: canvas ].
  self renderClockOn: canvas