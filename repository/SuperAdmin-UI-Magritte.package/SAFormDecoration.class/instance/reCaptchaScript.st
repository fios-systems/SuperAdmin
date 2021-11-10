rendering
reCaptchaScript
  | script |
  script := String streamContents: [ :stream |  ].
  ^ JSStream
    on:
      'function onSubmit' , formId
        ,
          '(event){if(grecaptcha.getResponse()==""){event.preventDefault();return;};$("#'
        , formId
        ,
          ' .saveButton").toggleClass("spinner-active");setTimeout(function(){$("#'
        , formId
        ,
          ' .saveButton").prop("disabled",true);}, 0);};
var form = document.getElementById("'
        , formId
        ,
          '");
form.addEventListener("submit", onSubmit' , formId , ', true);'