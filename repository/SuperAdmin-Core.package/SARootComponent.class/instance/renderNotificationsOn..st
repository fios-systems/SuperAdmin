rendering-notifications
renderNotificationsOn: canvas
  self notifications
    do: [ :notification | 
      canvas anchor
        class: 'listview__item';
        with: [ 
              notification imageUrl
                ifNotNil: [ 
                  canvas image
                    class: 'avatar-img';
                    url: notification imageUrl ]
                ifNil: [ 
                  notification iconName
                    ifNotNil: [ 
                      (canvas tag: 'i')
                        class: 'avatar-icon';
                        class: notification iconName ] ].
              canvas div
                class: 'listview__content';
                with: [ 
                      canvas div
                        class: 'listview__heading';
                        with: [ canvas text: notification heading ].
                      canvas paragraph: notification text ] ] ]