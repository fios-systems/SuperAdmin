rendering
renderContentOn: canvas
  canvas div
    class: 'login';
    with: [ 
          self
            renderLoginOn: canvas;
            renderRegisterOn: canvas;
            renderForgotPasswordOn: canvas ]