rendering
renderRegisterOn: canvas
  canvas div
    class: 'login__block';
    class: 'active';
    id: 'l-register';
    with: [ 
          canvas div
            class: 'login__block__header';
            with: [ 
                  self renderLogoOn: canvas.
                  canvas text: 'Create your account.'.
                  self renderLoginActionsOn: canvas ].
          canvas div
            class: 'login__block__body';
            with: [ 
                  self renderErrorsForSection: action on: canvas.
                  canvas render: self registerComponent ] ]