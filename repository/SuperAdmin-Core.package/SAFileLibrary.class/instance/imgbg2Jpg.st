uploaded metadata
imgbg2Jpg
	^ WAFileLibraryResource
		filepath: 'img/bg/2.jpg'
		mimeType: (WAMimeType main: 'image' sub: 'jpeg')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imgbg2JpgContent)