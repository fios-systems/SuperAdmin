rendering
renderContentOn: html
  "IMPORTANT: from ANYWHERE in this class, you CANNOT call (even directly or indirectly) and some point the FaUserContextInformation as #current may not be available in certain scenarios. For example, when this class is rendered from a rendering error (DpQuuveProductionWalkbackErrorHandler >> handleRenderingError:with:), the 'FaUserContextInformation current' is nil."

  html
    tbsContainer: [ 
      html
        tbsJumbotron: [ 
          "self renderQuuveLogosOn: html."
          self renderMainMessageOn: html.
          self renderErrorInformationOn: html.
          html break.
          self renderButtonsOn: html ] ]