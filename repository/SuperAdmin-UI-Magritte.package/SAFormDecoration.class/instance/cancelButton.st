accessing
cancelButton
  ^ self buttons
    detect: [ :button | button selector == #'cancel' ]
    ifNone: [ nil ]