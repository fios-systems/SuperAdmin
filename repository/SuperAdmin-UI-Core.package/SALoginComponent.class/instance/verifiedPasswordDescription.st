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
    yourself