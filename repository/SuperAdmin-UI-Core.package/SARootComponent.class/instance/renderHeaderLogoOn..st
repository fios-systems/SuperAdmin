rendering-header
renderHeaderLogoOn: canvas
  canvas div
    class: 'logo';
    class: 'd-none';
    class: 'd-inline-flex';
    with: [ 
          canvas anchor
            callback: [ 
                  "Select default Component"
                   ];
            with: [ canvas image url: SAFileLibrary / #'imgbrand5smiths5smithsWhitePng' ] ]