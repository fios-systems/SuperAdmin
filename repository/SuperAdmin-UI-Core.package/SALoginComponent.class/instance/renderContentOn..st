rendering
renderContentOn: canvas
  canvas div
    class: 'login';
    with: [ 
          action = 'login'
            ifTrue: [ self renderLoginOn: canvas ].
          action = 'register'
            ifTrue: [ self renderRegisterOn: canvas ].
          action = 'forgotPassword'
            ifTrue: [ self renderForgotPasswordOn: canvas ] ]