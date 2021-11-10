rendering
renderLoginActionsOn: canvas
  canvas div
    class: 'actions actions--inverse login__block__actions';
    with: [ 
          canvas div
            class: 'dropdown';
            with: [ 
                  (canvas tag: 'i')
                    class: 'zwicon-more-h actions__item';
                    attributeAt: 'data-bs-toggle' put: 'dropdown';
                    attributeAt: 'aria-expanded' put: false.
                  canvas div
                    class: 'dropdown-menu dropdown-menu-right';
                    attributeAt: 'x-placement' put: 'bottom-end';
                    style:
                        'position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(-109px, 35px, 0px);';
                    with: [ 
                          canvas anchor
                            class: 'dropdown-item';
                            callback: [ 
                                  self reset.
                                  action := 'login' ];
                            with: 'Sign in'.
                          canvas anchor
                            class: 'dropdown-item';
                            callback: [ 
                                  self reset.
                                  action := 'register' ];
                            with: 'Create an account'.
                          canvas anchor
                            class: 'dropdown-item';
                            callback: [ 
                                  self reset.
                                  action := 'forgotPassword' ];
                            with: 'Forgot Password' ] ] ]