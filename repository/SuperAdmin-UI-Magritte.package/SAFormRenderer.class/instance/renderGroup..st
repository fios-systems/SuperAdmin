rendering
renderGroup: aDescription
  super renderGroup: aDescription.
  html div
    class: 'magritte-group';
    with: [ 
          html div
            class: 'heading';
            with: aDescription group ]