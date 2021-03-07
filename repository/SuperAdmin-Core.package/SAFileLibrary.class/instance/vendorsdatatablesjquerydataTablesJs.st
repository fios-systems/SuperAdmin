uploaded metadata
vendorsdatatablesjquerydataTablesJs
	^ WAFileLibraryResource
		filepath: 'vendors/datatables/jquery.dataTables.js'
		mimeType: (WAMimeType main: 'application' sub: 'x-javascript')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #vendorsdatatablesjquerydataTablesJsContent)