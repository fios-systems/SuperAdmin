rendering
enableSpinnerScript
  ^ JSStream
    on:
      (String
        streamContents: [ :stream | 
          self useReCaptcha
            ifTrue: [ stream nextPutAll: 'if(grecaptcha.getResponse()!=""){' ].
          stream
            nextPutAll:
              '$("#' , formId
                ,
                  ' .saveButton").prop("disabled", true).toggleClass("spinner-active");'.
          self useReCaptcha
            ifTrue: [ stream nextPutAll: '}' ] ])