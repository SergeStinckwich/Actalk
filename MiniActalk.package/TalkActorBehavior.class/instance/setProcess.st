initialize-release
setProcess
	"should have a way to kill all the actors storing the processes forked"
	
	[[true ] 
		whileTrue: [self acceptNextMessage]] fork