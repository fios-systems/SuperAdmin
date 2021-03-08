rendering-themes
renderThemeSelectorTopNavOn: canvas
  canvas listItem
    class: 'd-none';
    class: 'd-sm-inline-block';
    with: [ 
          canvas anchor
            class: 'top-nav__themes';
            attributeAt: 'data-sa-action' put: 'aside-open';
            attributeAt: 'data-sa-target' put: '.themes';
            with: [ (canvas tag: 'i') class: 'zwicon-palette' ] ]