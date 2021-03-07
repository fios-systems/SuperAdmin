uploaded metadata
imgcalendar8Jpg
	^ WAFileLibraryResource
		filepath: 'img/calendar/8.jpg'
		mimeType: (WAMimeType main: 'image' sub: 'jpeg')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imgcalendar8JpgContent)