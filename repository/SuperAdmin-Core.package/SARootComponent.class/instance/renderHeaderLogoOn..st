rendering-header
renderHeaderLogoOn: canvas
  canvas div
    class: 'logo';
    class: 'd-none';
    class: 'd-sm-inline-flex';
    with: [ 
          canvas anchor
            callback: [ 
                  "Select default Component"
                   ];
            with: [ canvas text: 'Super Admin 2.0' ] ]