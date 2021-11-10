actions
reset
  self clearPasswords.
  self children do: [ :child | child reset ]