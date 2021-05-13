rendering
renderButtonsWithTargetOn: html
  self buttons
    do: [ :each | 
      | tag labelAndTarget |
      labelAndTarget := each value substrings: '|'.
      tag := html anchor
        class: 'btn';
        accessKey: each value first;
        callback: [ self execute: each key ].
      each = buttons first
        ifTrue: [ tag class: 'btn-primary' ]
        ifFalse: [ tag class: 'btn-default' ].
      labelAndTarget size == 2
        ifTrue: [ tag attributeAt: 'target' put: labelAndTarget last ].
      tag with: labelAndTarget first ]
    separatedBy: [ html space ]