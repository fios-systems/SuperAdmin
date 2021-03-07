baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec
			package: 'SuperAdmin-Core';
			package: 'SuperAdmin-Widgets'
			with: [ spec requires: 'SuperAdmin-Core' ] ]