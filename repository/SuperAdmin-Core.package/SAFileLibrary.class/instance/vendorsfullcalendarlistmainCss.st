uploaded metadata
vendorsfullcalendarlistmainCss
	^ WAFileLibraryResource
		filepath: 'vendors/fullcalendar/list/main.css'
		mimeType: (WAMimeType main: 'text' sub: 'css')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsfullcalendarlistmainCssContent)