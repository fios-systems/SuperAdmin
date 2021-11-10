utilities
configureApplication: application
  | filter exceptionHandlerAttribute |
  application configuration addParent: SASystemConfiguration instance.
  application preferenceAt: #'sessionClass' put: SASession.
  application exceptionHandler: SAProductionWalkbackErrorHandler.
  ^ application