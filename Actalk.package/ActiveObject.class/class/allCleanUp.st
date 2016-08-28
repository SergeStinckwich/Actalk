process cleanup
allCleanUp
	"Provide a reset/cleanup of activity processes of that kind.
	Delegate 
	allCleanUp to the associated activity class."
	"ActiveObject allCleanUp"
	"To find the associated activity class,"
	| instance |
	instance := self someInstance.
	"we need one of its instances,"
	instance isNil
		ifTrue: ["possibly by creating one."
			instance := self basicNew].
	instance activityClass allCleanUp