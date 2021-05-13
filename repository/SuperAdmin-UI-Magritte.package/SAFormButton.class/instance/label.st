Accessing
label
  ^ label ifNil: [ label := self labelForSelector: selector ]