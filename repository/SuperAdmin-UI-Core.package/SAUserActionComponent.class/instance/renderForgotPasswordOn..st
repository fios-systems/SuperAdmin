rendering
renderForgotPasswordOn: canvas
  canvas div
    class: 'login__block';
    class: 'active';
    id: 'l-forget-password';
    with: [ 
          canvas div
            class: 'login__block__header';
            with: [ 
                  self renderLogoOn: canvas.
                  canvas text: 'Forgot Password?'.
                  self renderLoginActionsOn: canvas ].
          canvas div
            class: 'login__block__body';
            with: [ 
                  self renderErrorsForSection: action on: canvas.
                  canvas render: self forgotPasswordComponent ] ]