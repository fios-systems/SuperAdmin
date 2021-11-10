components
lockComponent
  ^ (self components
    at: #'lockScreen'
    ifAbsentPut: [ 
      SAUserActionComponent new
        validator: self;
        action: 'lockscreen';
        yourself ])
    user: self session lockUser;
    yourself