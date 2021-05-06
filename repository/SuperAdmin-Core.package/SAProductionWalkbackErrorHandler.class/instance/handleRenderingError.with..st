private
handleRenderingError: anException with: wallbackComponent
  self requestContext
    respond: [ :response | 
      response
        internalError;
        contentType: WAMimeType textHtml;
        nextPutAll:
            (self rendererClass builder
                fullDocument: true;
                rootBlock: [ :root | self updateHtmlRoot: root forException: anException ];
                render: [ :html | 
                      "In case of a rendering error, we render the wallbackComponent but we do not render it;s buttons as callbacks won't work at this point."
                      wallbackComponent shouldRenderButtons: false.
                      [ html render: wallbackComponent ]
                        on: Error
                        do: [ :ex | html render: 'Error rendering error page: ' , ex printString ] ]) ]