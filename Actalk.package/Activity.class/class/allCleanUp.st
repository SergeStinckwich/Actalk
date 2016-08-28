process cleanup
allCleanUp
	"Provide a reset/cleanup of activity processes of that kind.
	That is, 
	terminate activity processes of all instances of this activity class and of 
	its subclasses."
	"Following expression provides cleanup of all kinds of activities. Takes a 
	little while.
	(On the Mac, move the mouse from time to time!!). Print 
	should be reinitialized then."
	"Activity allCleanUp"
	Transcript show: 'CleanUp of ' , self name , ' hierarchy start'.
	self cleanUp.
	self allSubclasses
		do: [:anActivityClass | 
			anActivityClass cleanUp.
			Transcript show: '.'].
	self postCleanUp.
	"Some reinitialization may need to be done (to restart aborted activities)."
	Transcript show: ' done!';
		 cr