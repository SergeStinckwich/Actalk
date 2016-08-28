process cleanup
postCleanUp
	"We need to possibly reset the Print active object whose activity may 
	have been terminated."
	(Activity isEqualOrSubclassOf: self)
		ifTrue: [ActiveTranscript initialize]