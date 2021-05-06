updating
updateRoot: anHtmlRoot
  "This is a hack because super class end up sending super super until the implementation of WAWalkback that does 'WAToolFiles default updateRoot: anHtmlRoot' and that removes all styles from our application, making the rendering very bad. So here I grab the needed things in the hierarchy of #updateRoot:"