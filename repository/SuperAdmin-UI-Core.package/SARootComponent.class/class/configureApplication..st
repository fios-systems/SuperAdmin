utilities
configureApplication: application
  | filter exceptionHandlerAttribute |
  application configuration addParent: SASystemConfiguration instance.
  application preferenceAt: #'sessionClass' put: SASession.
  filter := WAExceptionFilter new.
  exceptionHandlerAttribute := filter configuration
    attributeAt: #'exceptionHandler'.
  filter configuration
    takeValue: SAProductionWalkbackErrorHandler
    forAttribute: exceptionHandlerAttribute.
  application addFilter: filter