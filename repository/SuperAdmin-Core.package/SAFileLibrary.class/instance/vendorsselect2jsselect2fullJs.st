uploaded metadata
vendorsselect2jsselect2fullJs
	^ WAFileLibraryResource
		filepath: 'vendors/select2/js/select2.full.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsselect2jsselect2fullJsContent)