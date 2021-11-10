initialisation
initalizeSessionAnnouncements
  self subscribe: SALogin do: [ :ann | self loginUser: ann user ] for: self.
  self subscribe: SALogout do: [ :ann | self logoutUser: ann user ] for: self.
  self subscribe: SALock do: [ :ann | self lockUser: ann user ] for: self.
  self subscribe: SAUnlock do: [ :ann | self unlockUser: ann user ] for: self