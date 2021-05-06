rendering
renderLoginOn: canvas
  self
    render: 'login'
    header: [ :html | html text: 'Welcome. Please sign in.' ]
    body: [ :html | 
      canvas div
        class: 'form-group';
        with: [ 
              canvas textInput
                callback: [ :value | userName := value ];
                class: 'form-control text-center';
                value: userName;
                placeholder: 'email address' ].
      canvas div
        class: 'form-group';
        with: [ 
              canvas passwordInput
                callback: [ :value | password := value ];
                class: 'form-control text-center';
                placeholder: 'password' ].
      canvas button
        type: 'submit';
        callback: [ self loginAction ];
        class: 'btn btn-theme btn--icon';
        with: [ (canvas tag: 'i') class: 'zwicon-checkmark' ] ]
    on: canvas