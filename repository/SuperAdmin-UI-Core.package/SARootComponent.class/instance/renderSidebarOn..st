rendering-sidebar
renderSidebarOn: canvas
  canvas aside
    class: 'sidebar';
    with: [ 
          canvas div
            class: 'scrollbar';
            with: [ self renderSidebarUserOn: canvas ] ]