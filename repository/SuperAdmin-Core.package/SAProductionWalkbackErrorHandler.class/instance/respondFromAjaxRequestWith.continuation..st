private
respondFromAjaxRequestWith: anException continuation: continuation
  "Instead of doing '(self requestContext responseGenerator internalError: anException) respond' (the default code for AJAX errors) we write a JSON serilized dictionary of useful information as the response. This response text (JSON) is then parsed by the #ajaxErrorHandler to show the error info to the user in a popup. "

  | responseGenerator infoDict |
  responseGenerator := self requestContext responseGenerator.
  infoDict := Dictionary new.
  infoDict at: 'exceptionDescription' put: anException printString.
  infoDict at: 'dateAndTime' put: DateAndTime now printString.
  infoDict at: 'continuationOop' put: continuation asOop printString.
  infoDict
    at: 'packagesVersions'
    put: (self packagesInfoStringFrom: #('SuperAdmin-Core')).
  infoDict at: 'sitePrefix' put: 'TODO: Not yet implemented'.
  infoDict at: 'user' put: self session user nickname.
  infoDict
    at: 'gemPid'
    put:
      ((self sessionDescriptionDictionaryForSessionId: System session) at: #'gemPid')
        asString.
  infoDict
    at: 'gemSessionID'
    put:
      ((self sessionDescriptionDictionaryForSessionId: System session)
        at: #'sessionId') asString.
  responseGenerator makePlainTextAndPerform: #'internalError'.
  responseGenerator response nextPutAll: infoDict asJson.
  responseGenerator respond	"code does not reach here after the respond"