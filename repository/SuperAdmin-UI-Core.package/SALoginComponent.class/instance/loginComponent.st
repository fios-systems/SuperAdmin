components
loginComponent
  ^ self components
    at: #'login'
    ifAbsentPut: [ 
      (self loginDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Sign In' icon: 'checkmark-circle')};
        onAnswer: [ self loginAction ];
        yourself ]