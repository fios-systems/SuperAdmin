rendering-search
renderSearchOn: canvas
  canvas form
    class: 'search';
    with: [ 
          canvas div
            class: 'search__inner';
            with: [ 
                  canvas textInput
                    class: 'search__text';
                    placeholder: 'Search...'.
                  (canvas tag: 'i')
                    class: 'zwicon-search';
                    class: 'search__helper'.
                  (canvas tag: 'i')
                    class: 'zwicon-arrow-left';
                    class: 'search__reset';
                    attributeAt: 'data-sa-action' put: 'search-close' ] ]