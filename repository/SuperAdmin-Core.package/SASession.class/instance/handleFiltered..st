handling
handleFiltered: aRequestContext
  aRequestContext request
    at: 'pulse'
    ifAbsent: [ lastAccessTime := DateAndTime now ].
  super handleFiltered: aRequestContext