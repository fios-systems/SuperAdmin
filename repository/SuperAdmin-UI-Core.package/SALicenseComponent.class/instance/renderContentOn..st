rendering
renderContentOn: canvas
  canvas div
    class: 'licenseScreen';
    with: [ 
          canvas heading
            level1;
            with: 'License'.
          canvas
            paragraph:
              'This is a placeholder for the license agreement required to use this system.'.
          canvas anchor
            callback: [ self answer ];
            with: 'Agree' ]