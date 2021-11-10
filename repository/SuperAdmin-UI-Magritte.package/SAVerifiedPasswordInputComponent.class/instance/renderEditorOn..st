rendering
renderEditorOn: html
  | passwordInput verifiedPasswordInput |
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
                  (passwordInput := html passwordInput)
                    id: self labelId;
                    title: description label;
                    on: #'string' of: self;
                    class: 'form-control';
                    class: 'is-invalid' if: self errors notEmpty.
                  description placeholder isNil
                    ifTrue: [ passwordInput placeholder: description label ]
                    ifFalse: [ passwordInput placeholder: description placeholder ].
                  description cssClasses do: [ :cls | passwordInput class: cls ].
                  self errors
                    ifNotEmpty: [ :errors | 
                      passwordInput
                        attributeAt: 'data-bs-toggle' put: 'popover';
                        attributeAt: 'data-bs-placement' put: 'right';
                        attributeAt: 'data-bs-trigger' put: 'focus';
                        attributeAt: 'data-bs-content'
                          put: (self errorStringFromErrors: errors) ].
                  html label
                    for: self labelId;
                    with: description label ] ].
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
                  (verifiedPasswordInput := html passwordInput)
                    id: self labelId;
                    title: description label;
                    on: #'verificationString' of: self;
                    class: 'form-control';
                    class: 'is-invalid' if: self errors notEmpty.
                  description placeholder isNil
                    ifTrue: [ verifiedPasswordInput placeholder: description label ]
                    ifFalse: [ verifiedPasswordInput placeholder: description placeholder ].
                  description cssClasses
                    do: [ :cls | verifiedPasswordInput class: cls ].
                  html label
                    for: self labelId;
                    with: 'Confirm ' , description label ] ]