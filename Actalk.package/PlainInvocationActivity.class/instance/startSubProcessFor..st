activity setting
startSubProcessFor: anInvocation
	"Create and start a new subprocess to consume a message."
	"Record the subprocess consuming the invocation within the process slot of the invocation.
	The subprocess may be used as an index to retrieve current invocation.
	See method currentInvocation of associated behavior class PlainInvocationObject."

	| subprocess |
	subprocess := [self subProcessBodyFor: anInvocation] newProcess.
	anInvocation process: subprocess.
	subprocess resume