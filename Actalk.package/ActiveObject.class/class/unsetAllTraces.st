event tracing
unsetAllTraces
	"Remove ALL event tracing methods in the Actalk hierarchy.
	Useful for  
	doing some cleanup like before filing out."
	"self unsetAllTraces"
	ActiveObject withAllSubclasses
		do: [:aClass | aClass setTrace: false]