rendering-search
renderSearchEnableTopNavOn: canvas
  canvas listItem
    class: 'd-xl-none';
    with: [ 
          canvas anchor
            attributeAt: 'data-sa-action' put: 'search-open';
            with: [ (canvas tag: 'i') class: 'zwicon-search' ] ]