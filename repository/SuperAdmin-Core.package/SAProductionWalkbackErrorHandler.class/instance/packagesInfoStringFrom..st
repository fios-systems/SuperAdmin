packaging info
packagesInfoStringFrom: aPackagesNamesList
  | stream counter |
  stream := String new writeStream.
  counter := 1.
  (self packagesFromPackageNames: aPackagesNamesList)
    do: [ :workingCopy | 
      stream
        nextPutAll:
          workingCopy package name , ' - v'
            , ('.' split: workingCopy ancestry ancestors first name) last
            , ' - ' , workingCopy ancestry ancestors first date printString.
      counter < aPackagesNamesList size
        ifTrue: [ stream nextPutAll: '  ///  ' ].
      counter := counter + 1 ].
  ^ stream contents