rendering
errorStringFromErrors: errors
  ^ String
    streamContents: [ :stream | 
      errors
        do: [ :error | stream nextPutAll: error greaseString ]
        separatedBy: [ stream space ] ]