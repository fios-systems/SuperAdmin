rendering-themes
renderThemeSelectorOn: canvas
  canvas div
    class: 'themes';
    with: [ 
          canvas div
            class:
                'scrollbar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition';
            with: [ self renderThemesOn: canvas ] ]