accessing
skip
	numberTimesSkipped := numberTimesSkipped + 1
	"Warning: the tracing code below deadlocks the demo if evaluated.
	This is 
	very bizarre indeed...
	The request on the transcript waits indefinitely 
	for some unknown reason.
	As a result skip request triggered by the 
	accept event method stays within
	the critical synchronization region 
	(semaphore synchroMutualExclusion)
	and consequently locks any other 
	activity.
	I have to dig up this problem someday..."
	"
	.
	Transcript show: 'Request for forks ' , (self arg: 1) printString , ' 
	and ' , (self arg: 2) printString , ' by ' , (self sender) printString
					, ' 
	has been skipped ' , numberTimesSkipped printString , ' times.';cr
	"