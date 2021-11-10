rendering
renderMainMessageOn: html
  html div
    fontAwesome;
    class: 'fa-5x';
    style: 'color: #B22222';
    with: [ html span fontAwesomeWarningIcon ].
  html div
    style: 'font-size: 50px;line-height: 37px;padding-bottom: 30px;';
    with: [ html text: 'OOPS! SOMETHING WENT WRONG' ].
  html
    paragraph:
      'The operation you tried failed because of an unexpected error. You may want to either go back with the browser and try again, sign out and sign in and try again, or contact us about the error with the given information on this screen. However, note that other aspects of the program should continue to work normally.'