actions
lockscreenAction
  action := 'lockscreen'.
  self clearErrors.
  self hasValidator
    ifTrue: [ 
      (validator userWithName: user username password: password)
        ifNil: [ 
          (self errorsForSection: 'lockscreen')
            add: [ :html | 
              html
                paragraph: 'The password was incorrect.';
                paragraph: 'Please try again.' ].
          (Delay forSeconds: 5) wait ]
        ifNotNil: [ :loggedInUser | 
          self
            clearPasswords;
            removeComponentAt: #'lockscreen'.
          ^ self announce: (SALogin user: loggedInUser) ] ]