uploaded metadata
imgcalendar4Jpg
	^ WAFileLibraryResource
		filepath: 'img/calendar/4.jpg'
		mimeType: (WAMimeType main: 'image' sub: 'jpeg')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imgcalendar4JpgContent)