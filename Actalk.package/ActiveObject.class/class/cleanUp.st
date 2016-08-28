process cleanup
cleanUp
	"Provide a reset/cleanup of activity processes associated to active objects 
	of this class.
	Delegate cleanUp to the associated activity class."
	"See method allCleanUp to also cleanup all subclasses."
	"To find the associated activity class,"
	| instance |
	instance := self someInstance.
	"we need one of its instances,"
	instance isNil
		ifTrue: ["possibly by creating one."
			instance := self new].
	instance activityClass cleanUp