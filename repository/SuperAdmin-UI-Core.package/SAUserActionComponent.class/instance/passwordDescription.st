descriptions
passwordDescription
  <magritteDescription>
  ^ MAPasswordDescription new
    accessor: #'password';
    label: 'Password';
    priority: 110;
    componentClass: SAPasswordInputComponent;
    propertyAt: #'icon' put: 'zwicon-password';
    beRequired;
    yourself