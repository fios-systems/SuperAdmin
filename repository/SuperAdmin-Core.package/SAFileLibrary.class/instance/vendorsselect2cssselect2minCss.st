uploaded metadata
vendorsselect2cssselect2minCss
	^ WAFileLibraryResource
		filepath: 'vendors/select2/css/select2.min.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsselect2cssselect2minCssContent)