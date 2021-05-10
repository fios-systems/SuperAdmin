rendering-loginAndLock
checkForUserLockOnScript: script
  self session isLoggedIn
    ifTrue: [ 
      DateAndTime now - self session lastAccessTime
        > (self application configuration at: #'userLockSeconds') seconds
        ifTrue: [ 
          self session announce: (SALock user: self session user).
          script refresh ] ]