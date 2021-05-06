packaging info
packagesFromPackageNames: aPackageNamesList
  ^ aPackageNamesList
    collect: [ :aPackageName | MCWorkingCopy allManagers detect: [ :each | each package name = aPackageName ] ]