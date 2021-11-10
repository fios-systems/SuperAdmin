accessing
formDecoration
  "Answer the form decoration or nil if there isn't one"

  ^ self decorations
    detect: [ :dec | dec isKindOf: MAFormDecoration ]
    ifNone: [ nil ]