rendering
renderButtonsOn: html
  "We cannot always render buttons. For example, when this class is rendered from a rendering error (DpQuuveProductionWalkbackErrorHandler >> handleRenderingError:with:) buttons/callbacks won't work. So we do not want to even render the buttons."

  shouldRenderButtons
    ifTrue: [ 
      html tbsForm
        beInline;
        with: [ 
              html tbsButton
                bePrimary;
                beSubmit;
                callback: [ 
                      "Note that we are not saving DBs on logout as it does the #renderUserActionsOn:. This is because...since there was an error...we do not save DBs just in case..."
                      self session
                        unregister;
                        redirect ];
                text: 'Logout' ] ]