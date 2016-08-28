process control
terminate
	"Terminate also express message activity process."
	"We have to launch a specific process to terminate
	both main activity 
	process and express activity process.
	At first look it may seem very 
	paradoxal indeed!
	However the point is that we don't know what is 
	current process:
	main activity process, or express activity process, or 
	an external process.
	We have to terminate two processes in sequence.
	If 
	the first process we terminate happens to be current process
	we would 
	never terminate the second one!"
	[super terminate.
	expressProcess terminateNoSignal] fork