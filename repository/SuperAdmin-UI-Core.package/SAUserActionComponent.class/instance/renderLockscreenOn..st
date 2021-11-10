rendering
renderLockscreenOn: canvas
  canvas div
    class: 'login__block';
    class: 'active';
    id: 'l-login';
    with: [ 
          canvas div
            class: 'login__block__header';
            with: [ 
                  self renderLogoOn: canvas.
                  canvas text: 'Welcome back ' , user nickname.
                  self renderLoginActionsOn: canvas ].
          canvas div
            class: 'login__block__body';
            with: [ 
                  self renderErrorsForSection: action on: canvas.
                  canvas render: self loginComponent ] ]