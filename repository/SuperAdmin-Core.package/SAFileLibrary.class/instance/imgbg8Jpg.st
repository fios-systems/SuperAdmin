uploaded metadata
imgbg8Jpg
	^ WAFileLibraryResource
		filepath: 'img/bg/8.jpg'
		mimeType: (WAMimeType main: 'image' sub: 'jpeg')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imgbg8JpgContent)