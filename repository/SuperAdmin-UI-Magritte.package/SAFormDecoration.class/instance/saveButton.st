accessing
saveButton
  ^ self buttons
    detect: [ :button | button selector == #'save' ]
    ifNone: [ ^ nil ]