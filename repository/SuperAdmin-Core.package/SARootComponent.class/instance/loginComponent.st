components
loginComponent
  ^ self components at: #'login' ifAbsentPut: [ SALoginComponent new yourself ]