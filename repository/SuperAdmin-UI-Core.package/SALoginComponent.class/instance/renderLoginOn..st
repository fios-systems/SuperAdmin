rendering
renderLoginOn: canvas
  | nextId |
  self
    render: 'login'
    header: [ :html | html text: 'Welcome. Please sign in.' ]
    body: [ :html | 
      canvas fieldSet
        class: 'mb-3';
        with: [ 
              canvas div
                class: 'input-group mb-3';
                with: [ 
                      canvas span
                        class: 'input-group-text';
                        with: [ (canvas tag: 'i') class: 'zwicon-user' ].
                      canvas div
                        class: 'form-floating';
                        with: [ 
                              canvas textInput
                                id: (nextId := canvas nextId);
                                title: 'Email Address';
                                callback: [ :value | userName := value ];
                                class: 'form-control';
                                class: 'is-invalid' if: true;
                                value: userName;
                                placeholder: 'email@address.com';
                                attributeAt: 'data-bs-toggle' put: 'popover';
                                attributeAt: 'data-bs-placement' put: 'right';
                                attributeAt: 'data-bs-trigger' put: 'focus';
                                attributeAt: 'data-bs-content'
                                  put:
                                    'Enter your email address. This is a long error message too see how it formats in the popover.'.
                              canvas label
                                for: nextId;
                                with: 'email address' ] ].
              canvas div
                class: 'input-group mb-3';
                with: [ 
                      canvas span
                        class: 'input-group-text';
                        with: [ (canvas tag: 'i') class: 'zwicon-password' ].
                      canvas div
                        class: 'form-floating';
                        with: [ 
                              canvas passwordInput
                                id: (nextId := canvas nextId);
                                callback: [ :value | password := value ];
                                class: 'form-control';
                                placeholder: 'password';
                                attributeAt: 'data-bs-toggle' put: 'popover';
                                attributeAt: 'data-bs-placement' put: 'right';
                                attributeAt: 'data-bs-trigger' put: 'focus';
                                attributeAt: 'data-bs-content'
                                  put:
                                    'Enter your email address. This is a long error message too see how it formats in the popover.'.
                              canvas label
                                for: nextId;
                                with: 'password' ] ] ].
      canvas button
        type: 'submit';
        callback: [ self loginAction ];
        class: 'btn btn-theme btn--icon';
        with: [ (canvas tag: 'i') class: 'zwicon-checkmark' ] ]
    on: canvas