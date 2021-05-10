actions
loginAction
  action := 'login'.
  self clearErrors.
  self hasValidator
    ifTrue: [ 
      (validator userWithName: userName password: password)
        ifNotNil: [ :user | ^ self announce: (SALogin user: user) ] ].
  (self errorsForSection: 'login')
    add: [ :html | 
      html
        paragraph: 'There was an error while processing your request.';
        paragraph: 'Review your entries and please try again.' ]