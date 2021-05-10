rendering-header
renderHeaderNavigationTriggerOn: canvas
  canvas div
    class: 'navigation-trigger';
    class: 'd-xl-none';
    attributeAt: 'data-sa-action' put: 'aside-open';
    attributeAt: 'data-sa-target' put: '.sidebar';
    with: [ (canvas tag: 'i') class: 'zwicon-hamburger-menu' ]