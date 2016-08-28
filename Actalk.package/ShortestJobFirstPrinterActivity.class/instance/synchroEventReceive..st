synchro events
synchroEventReceive: anInvocation
	"Set up the job size of printing invocations.
	In this case simply copies the second argument being the length.
	There may be some general computation prediction taking place here."

	super synchroEventReceive: anInvocation.
	anInvocation ifSelector: #print:length: do:
		[anInvocation jobSize: (anInvocation arg: 2)]