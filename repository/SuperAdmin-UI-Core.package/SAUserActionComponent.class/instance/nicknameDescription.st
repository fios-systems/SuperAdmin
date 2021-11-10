descriptions
nicknameDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'nickname';
    label: 'Name';
    priority: 50;
    componentClass: SATextInputComponent;
    propertyAt: #'icon' put: 'zwicon-user';
    beRequired;
    yourself