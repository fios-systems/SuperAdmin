rendering-pageLoader
renderPageLoaderOn: canvas
  canvas div
    class: 'page-loader';
    with: [ 
          canvas div
            class: 'page-loader__spinner';
            with: [ self renderPageLoaderSpinnerOn: canvas ] ]