process cleanup
cleanUp
	"Provide a reset/cleanup of activity processes of this class."
	"See method allCleanUp to also cleanup all subclasses."
	"Note, since VisualWorks version 2.0,
	the GC does reclaim processes 
	waiting on unreferenced semaphores.
	Thus this explicit cleanup facility 
	is no more necessary. Thanks !"
	self allInstances
		do: [:anActivity | anActivity terminate]