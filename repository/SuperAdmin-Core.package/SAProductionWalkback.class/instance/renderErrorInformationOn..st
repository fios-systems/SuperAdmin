rendering
renderErrorInformationOn: html
  html break.
  exception
    ifNotNil: [ html text: 'Error description: ' , exception printString ].
  html break.
  continuationOop
    ifNotNil: [ html text: 'Error ID: ' , continuationOop asString ].
  html break.
  html text: 'Generated at: ' , DateAndTime now printString.
  html break.
  self session user
    ifNotNil: [ html text: 'By User: ' , self session user displayName ].
  html break.
  html text: 'Site url: ' , WACurrentRequestContext value request uri asString.
  html break.
  html text: 'Packages: ' , (self packagesInfoStringFrom: #('SuperAdmin-Core')).
  html break.
  html
    text:
      'Gem PID: '
        ,
          ((self sessionDescriptionDictionaryForSessionId: System session) at: #'gemPid')
            asString.
  html break.
  html
    text:
      'Gem Session ID: '
        ,
          ((self sessionDescriptionDictionaryForSessionId: System session)
            at: #'sessionId') asString