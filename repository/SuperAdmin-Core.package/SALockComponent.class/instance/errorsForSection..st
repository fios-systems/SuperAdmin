rendering
errorsForSection: section
  ^ (errors ifNil: [ errors := Dictionary new ])
    at: section
    ifAbsentPut: [ OrderedCollection new ]