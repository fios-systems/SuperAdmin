rendering-pageLoader
renderPageLoaderSpinnerOn: canvas
  "ideally this would use the Dynamic SVG library for seaside. One day I hope to have time to bring it up to date"

  (canvas tag: 'svg')
    attributeAt: 'viewBox' put: '25 25 50 50';
    with: [ 
          (canvas tag: 'circle')
            attributeAt: 'cx' put: 50;
            attributeAt: 'cy' put: 50;
            attributeAt: 'r' put: 20;
            attributeAt: 'fill' put: 'none';
            attributeAt: 'stroke-width' put: 2;
            attributeAt: 'stroke-miterlimit' put: 10 ]