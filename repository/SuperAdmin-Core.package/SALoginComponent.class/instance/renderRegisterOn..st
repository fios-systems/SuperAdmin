rendering
renderRegisterOn: canvas
  canvas div
    class: 'login__block';
    class: 'active' if: action = 'register';
    id: 'l-register';
    with: [ 
          canvas div
            class: 'login__block__header';
            with: [ 
                  (canvas tag: 'i') class: 'zwicon-user-circle'.
                  canvas text: 'Create an account.'.
                  self renderLoginActionsOn: canvas ].
          canvas div
            class: 'login__block__body';
            with: [ 
                  self renderErrorsForSection: 'register' on: canvas.
                  canvas form
                    with: [ 
                      canvas div
                        class: 'form-group';
                        with: [ 
                              canvas textInput
                                callback: [ :value | displayName := value ];
                                class: 'form-control text-center';
                                placeholder: 'name' ].
                      canvas div
                        class: 'form-group';
                        with: [ 
                              canvas textInput
                                callback: [ :value | userName := value ];
                                class: 'form-control text-center';
                                placeholder: 'email address' ].
                      canvas div
                        class: 'form-group';
                        with: [ 
                              canvas passwordInput
                                callback: [ :value | password := value ];
                                class: 'form-control text-center';
                                placeholder: 'password' ].
                      canvas div
                        class: 'form-group';
                        with: [ 
                              canvas passwordInput
                                callback: [ :value | passwordConfirm := value ];
                                class: 'form-control text-center';
                                placeholder: 'confirm password' ].
                      canvas div
                        class: 'form-group';
                        with: [ 
                              canvas div
                                class: 'custom-control custom-checkbox';
                                with: [ 
                                      canvas checkbox
                                        id: 'login-check';
                                        class: 'custom-control-input'.
                                      canvas label
                                        class: 'custom-control-label';
                                        for: 'login-check';
                                        with: [ 
                                              canvas text: 'Accept the '.
                                              canvas anchor
                                                callback: [ self showLicenseAction ];
                                                with: 'license agreement' ] ] ].
                      canvas button
                        type: 'submit';
                        callback: [ self registerAction ];
                        class: 'btn btn-theme btn--icon';
                        with: [ (canvas tag: 'i') class: 'zwicon-checkmark' ] ] ] ]