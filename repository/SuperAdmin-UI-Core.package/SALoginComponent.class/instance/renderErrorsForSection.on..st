rendering
renderErrorsForSection: section on: canvas
  (self errorsForSection: section)
    do: [ :errorBlock | 
      canvas div
        class: 'container login-error';
        style: 'padding-bottom: 1rem;';
        with: [ 
              canvas div
                class: 'row align-items-start';
                style: 'padding-bottom: 1rem;';
                with: [ 
                      canvas div
                        class: 'col-2';
                        with: [ 
                              (canvas tag: 'i')
                                class: 'zwicon-exclamation-mark';
                                style: 'font-size: 3rem;' ].
                      canvas div
                        class: 'col-10';
                        style: 'text-align: left';
                        with: [ errorBlock value: canvas ] ] ] ]