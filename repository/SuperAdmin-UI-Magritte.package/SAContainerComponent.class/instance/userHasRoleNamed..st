user access
userHasRoleNamed: roleName
  "Answer true if the current user has the role named roleName"

  ^ self session user
    includesAnyRoleOf: (self rolesWithNames: {roleName})
    in: self organisationModel bpmEnvironment