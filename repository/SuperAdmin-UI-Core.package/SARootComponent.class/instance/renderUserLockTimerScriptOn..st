rendering-loginAndLock
renderUserLockTimerScriptOn: html
  html document
    addLoadScript:
      (html jQuery ajax
        addParameter: 'pulse';
        script: [ :script | self checkForUserLockOnScript: script ];
        interval: 50000)