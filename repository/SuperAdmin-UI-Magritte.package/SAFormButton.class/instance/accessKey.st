Accessing
accessKey
  ^ accessKey ifNil: [ accessKey := self label first ]