rendering
renderForgotPasswordOn: canvas
  canvas div
    class: 'login__block';
    class: 'active' if: action = 'forget-password';
    id: 'l-forget-password';
    with: [ 
          canvas div
            class: 'login__block__header';
            with: [ 
                  (canvas tag: 'i') class: 'zwicon-user-circle'.
                  canvas text: 'Forgot Password?'.
                  self renderLoginActionsOn: canvas ].
          canvas div
            class: 'login__block__body';
            with: [ 
                  self renderErrorsForSection: 'forget-password' on: canvas.
                  canvas form
                    with: [ 
                      canvas div
                        class: 'form-group';
                        with: [ 
                              canvas textInput
                                callback: [ :value | userName := value ];
                                class: 'form-control text-center';
                                placeholder: 'email address' ].
                      canvas button
                        type: 'submit';
                        callback: [ self forgotPasswordAction ];
                        class: 'btn btn-theme btn--icon';
                        with: [ (canvas tag: 'i') class: 'zwicon-checkmark' ] ] ] ]