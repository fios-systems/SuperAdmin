accessing
secondaryButtons
  | secondaryButtons |
  "All but save and cancel"
  secondaryButtons := OrderedCollection new.
  (self buttons
    select: [ :button | (#(#'cancel' #'save') includes: button key) not ])
    do: [ :button | secondaryButtons add: button ].
  ^ secondaryButtons