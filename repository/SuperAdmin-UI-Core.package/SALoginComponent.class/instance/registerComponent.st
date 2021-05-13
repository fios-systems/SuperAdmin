components
registerComponent
  ^ self components
    at: #'register'
    ifAbsentPut: [ 
      (self registerDescription asComponentOn: self)
        addValidatedForm:
            {(SAFormButton selector: #'save' label: 'Sign In' icon: 'checkmark-circle')};
        onAnswer: [ self registerAction ];
        yourself ]