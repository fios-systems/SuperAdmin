rendering
renderSaveButton: saveButton on: html
  | button |
  (button := html button)
    accessKey: 's';
    class: 'btn btn-theme btn--icon saveButton';
    class: 'button-spinner' if: self showSpinnerOnSubmit;
    callback: [ self execute: saveButton key ].
  self useReCaptcha
    ifFalse: [ button beSubmit ]
    ifTrue: [ 
      "button
        class: 'g-recaptcha';
        attributeAt: 'data-sitekey'
          put: (self application preferenceAt: #'reCaptchaSiteKey');
        attributeAt: 'data-callback' put: 'onSubmit' , formId , 'Form'"
       ].
  button with: [ (html tag: 'i') class: 'zwicon-checkmark' ]