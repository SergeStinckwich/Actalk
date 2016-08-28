baseline
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		package: 'Actalk';
		package: 'MiniActalk';
		group: 'default'
			with: #(Actalk)
	]