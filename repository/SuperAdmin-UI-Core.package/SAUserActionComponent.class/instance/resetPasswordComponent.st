components
resetPasswordComponent
  ^ self components
    at: #'resetPassword'
    ifAbsentPut: [ 
      (self resetPasswordDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Reset' icon: 'checkmark-circle')};
        onAnswer: [ self resetPasswordAction ];
        yourself ]