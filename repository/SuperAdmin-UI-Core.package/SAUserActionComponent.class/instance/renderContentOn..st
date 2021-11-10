rendering
renderContentOn: canvas
  | selector |
  selector := ('render' , action capitalized , 'On:') asSymbol.
  canvas div
    class: 'login';
    with: [ self perform: selector withArguments: {canvas} ]