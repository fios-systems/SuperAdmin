user access
rolesWithNames: roleNameCollection
  ^ roleNameCollection
    collect: [ :accessRoleName | 
      self defaultFrontOfficeRoleClass
        getRoleNamed: accessRoleName
        in: self modelViewApplication applicationName ]