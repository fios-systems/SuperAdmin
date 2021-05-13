descriptions
registerDescription
  ^ SAContainer
    withAll:
      self displayNameDescription , self userNameDescription
        , self verifiedPasswordDescription