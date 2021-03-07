uploaded metadata
vendorslightgalleryimgloadingGif
	^ WAFileLibraryResource
		filepath: 'vendors/lightgallery/img/loading.gif'
		mimeType: (WAMimeType main: 'image' sub: 'gif')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorslightgalleryimgloadingGifContent)