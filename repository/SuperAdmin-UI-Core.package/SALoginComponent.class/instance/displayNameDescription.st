descriptions
displayNameDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'displayName';
    label: 'Name';
    priority: 50;
    componentClass: SATextInputComponent;
    propertyAt: #'icon' put: 'zwicon-user';
    beRequired;
    yourself