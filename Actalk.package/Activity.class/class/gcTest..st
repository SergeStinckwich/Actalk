process cleanup
gcTest: isCleanUp 
	"ActiveObject gcTest: true"
	"To show that processes are recovered by gc thanks to cleanup."
	"ActiveObject gcTest: false"
	"To crash the system... and therefore prove the need for cleanup."
	"Test of cleanup to allow recovery of terminated processes.
	If cleanup is 
	set (true), it should run infinitely. Stop it eventually by interrupt 
	(^C).
	Otherwise (false), Smalltalk eventually crashes because processes 
	cannot be recovered by gc."
	| n |
	n := 0.
	[true]
		whileTrue: [100
				timesRepeat: [ActiveObject new active.
					n := n + 1].
			Transcript show: n printString , ' '.
			isCleanUp
				ifTrue: [ActiveObject cleanUp]]