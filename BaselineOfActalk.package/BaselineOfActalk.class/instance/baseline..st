baseline
baseline: spec
	<baseline>
	spec for: #common do: [ spec
		baseline: 'Actalk' with: [ spec
			repository: 'github://SergeStinckwich/Actalk:master'];
		group: 'default'
			with: #(Actalk)
	]