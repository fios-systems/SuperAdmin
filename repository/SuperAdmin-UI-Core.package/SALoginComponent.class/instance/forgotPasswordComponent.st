components
forgotPasswordComponent
  ^ self components
    at: #'forgotPassword'
    ifAbsentPut: [ 
      (self forgotPasswordDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Send Email' icon: 'checkmark-circle')};
        onAnswer: [ self forgotPasswordAction ];
        yourself ]