rendering-sidebar
renderSidebarUserOn: canvas
  canvas div
    class: 'user';
    with: [ 
          canvas div
            class: 'user__info';
            attributeAt: 'data-toggle' put: 'dropdown';
            with: [ 
                  canvas image
                    class: 'user__img';
                    url: SAFileLibrary / #'imgavatar3Png'.
                  canvas div
                    with: [ 
                      canvas div
                        class: 'user__name';
                        with: [ canvas text: 'Jupiter Jones III' ].
                      canvas div
                        class: 'user__email';
                        with: [ canvas text: 'jupiter@mynation.earth' ] ].
                  canvas div
                    class: 'dropdown-menu dropdown-menu';
                    with: [ 
                          canvas anchor
                            class: 'dropdown-item';
                            with: [ canvas text: 'View Profile' ].
                          canvas anchor
                            class: 'dropdown-item';
                            with: [ canvas text: 'Settings' ].
                          canvas anchor
                            class: 'dropdown-item';
                            with: [ canvas text: 'Logout' ] ] ] ]