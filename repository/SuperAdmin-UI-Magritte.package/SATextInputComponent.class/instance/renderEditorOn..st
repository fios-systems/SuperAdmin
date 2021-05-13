rendering
renderEditorOn: html
  | textInput |
  html div
    class: 'input-group mb-3';
    with: [ 
          html span
            class: 'input-group-text';
            with: [ 
                  (description hasProperty: #'icon')
                    ifTrue: [ (html tag: 'i') class: (description propertyAt: #'icon') ] ].
          html div
            class: 'form-floating';
            with: [ 
                  (textInput := html textInput)
                    id: self labelId;
                    title: description label;
                    on: #'string' of: self;
                    class: 'form-control';
                    class: 'is-invalid' if: self errors notEmpty.
                  description placeholder isNil
                    ifTrue: [ textInput placeholder: description label ]
                    ifFalse: [ textInput placeholder: description placeholder ].
                  description cssClasses do: [ :cls | textInput class: cls ].
                  self errors
                    ifNotEmpty: [ :errors | 
                      textInput
                        attributeAt: 'data-bs-toggle' put: 'popover';
                        attributeAt: 'data-bs-placement' put: 'right';
                        attributeAt: 'data-bs-trigger' put: 'focus';
                        attributeAt: 'data-bs-content'
                          put: (errors reduce: [ :a :b | a , ' ' , b ]) ].
                  html label
                    for: self labelId;
                    with: description label ] ]