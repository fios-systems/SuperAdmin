rendering-topNav
renderClockOn: canvas
  canvas div
    class: 'nav-item clock';
    class: 'd-none';
    class: 'd-md-inline-block';
    with: [ 
          canvas div
            class: 'time';
            with: [ 
                  canvas span class: 'time__hours'.
                  canvas span class: 'time__min'.
                  canvas span class: 'time__sec' ] ]