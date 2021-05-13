rendering
renderComment: aDescription
  aDescription comment notNil
    ifTrue: [ 
      html paragraph
        class: 'field-comment';
        with: aDescription comment ]