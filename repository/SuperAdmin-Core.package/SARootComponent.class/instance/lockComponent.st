components
lockComponent
  ^ self components
    at: #'lockScreen'
    ifAbsentPut: [ 
      SALockComponent new
        validator: self;
        yourself ]