components
loginComponent
  ^ self components
    at: #'login'
    ifAbsentPut: [ 
      self loginComponentClass new
        validator: self;
        yourself ]