as yet unclassified
loadFromDist
  "SAFileLibrary loadFromDist"

  (self allSelectors
    select: [ :selector | 
      #(#'uploaded' #'uploaded metadata')
        includes: (self categoryOfSelector: selector) ])
    do: [ :selector | self removeSelector: selector ].
  self removeEmptyCategories.
  self
    recursivelyAddAllFilesIn:
      '/opt/git/JupiterSmalltalk/SuperAdmin/www_root/files/SAFileLibrary'