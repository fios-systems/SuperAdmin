accessing
errorsForDescription: aDescription
  ^ errors select: [ :anError | anError tag = aDescription ]