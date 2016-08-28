activity creation
active
	"Check if the active object behavior has already been used (activated)."
	^ aself isNil
		ifTrue: [super active]
		ifFalse: [self error: 'this active object has already been activated']