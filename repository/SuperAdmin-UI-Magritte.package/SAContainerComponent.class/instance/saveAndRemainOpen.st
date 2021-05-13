actions
saveAndRemainOpen
  self validate
    ifFalse: [ ^ self ].
  self commit