rendering
renderElement: aDescription
  aDescription group = group
    ifFalse: [ self renderGroup: aDescription ].
  self renderControl: aDescription.
  component isReadonly
    ifFalse: [ self renderComment: aDescription ]