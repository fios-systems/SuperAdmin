initialization
initializeWithException: anException continuation: aContinuation
  self initializeWithException: anException.
  continuation := aContinuation.
  continuationOop := continuation asOop.
  self addContinuation.
  shouldRenderButtons := true