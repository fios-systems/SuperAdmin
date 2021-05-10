rendering-notifications
renderNotificationsTopNavOn: canvas
  canvas listItem
    class: 'nav-item dropdown';
    class: 'top-nav__notifications';
    with: [ 
          canvas anchor
            class: 'top-nav__notify' if: self notifications notEmpty;
            attributeAt: 'data-toggle' put: 'dropdown';
            attributeAt: 'aria-expanded' put: false;
            with: [ (canvas tag: 'i') class: 'zwicon-bell' ].
          canvas div
            class: 'dropdown-menu dropdown-menu-right dropdown-menu--block';
            with: [ 
                  canvas div
                    class: 'dropdown-header';
                    with: [ 
                          (canvas tag: 'i')
                            class: 'zwicon-bell';
                            style: 'font-size: 1.4rem; margin-right: 1rem'.
                          canvas text: 'Notifications'.
                          canvas div
                            class: 'actions';
                            with: [ 
                                  canvas anchor
                                    class: 'actions__item';
                                    class: 'zwicon-checkmark-square';
                                    attributeAt: 'data-sa-action'
                                      put: 'notifications-clear';
                                    onClick:
                                        (canvas jQuery ajax callback: [ self notifications removeAll ]) ] ].
                  canvas div
                    class: 'listview listview--hover';
                    with: [ 
                          canvas div
                            class: 'listview__scroll scrollbar';
                            with: [ self renderNotificationsOn: canvas ] ] ] ]