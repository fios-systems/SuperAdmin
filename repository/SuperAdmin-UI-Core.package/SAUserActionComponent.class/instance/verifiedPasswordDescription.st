descriptions
verifiedPasswordDescription
  <magritteDescription>
  ^ MAPasswordDescription new
    accessor: #'password';
    label: 'Password';
    priority: 120;
    componentClass: SAVerifiedPasswordInputComponent;
    propertyAt: #'icon' put: 'zwicon-password';
    beRequired;
    addCondition: [ :v | v size > 6 ]
      labelled: 'Passwords must be at least 6 characters.';
    yourself