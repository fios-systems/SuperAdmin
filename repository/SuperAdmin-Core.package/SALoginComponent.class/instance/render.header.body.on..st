rendering
render: section header: headerBlock body: bodyBlock on: canvas
  canvas div
    class: 'login__block';
    class: 'active' if: action = section;
    id: 'l-' , section;
    with: [ 
          canvas div
            class: 'login__block__header';
            with: [ 
                  (canvas tag: 'i') class: 'zwicon-user-circle'.
                  headerBlock value: canvas.
                  self renderLoginActionsOn: canvas ].
          canvas div
            class: 'login__block__body';
            with: [ 
                  self renderErrorsForSection: section on: canvas.
                  canvas form with: [ bodyBlock value: canvas ] ] ]