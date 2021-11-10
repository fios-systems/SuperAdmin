descriptions
registerDescription
  ^ SAContainer
    withAll:
      self nicknameDescription , self userNameDescription
        , self verifiedPasswordDescription