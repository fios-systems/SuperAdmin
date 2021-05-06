components
licenseComponent
  ^ self components at: #'license' ifAbsentPut: [ SALicenseComponent new ]