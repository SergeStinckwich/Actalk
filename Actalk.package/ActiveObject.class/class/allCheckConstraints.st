compatibility constraints
allCheckConstraints
	"Check constraints for all active object classes."
	"ActiveObject allCheckConstraints"
	| isSatisfied |
	isSatisfied := true.
	Transcript show: 'Constraints check for ' , self name , ' hierarchy start'.
	self checkConstraints.
	self allSubclasses
		do: [:anActiveObjectClass | 
			isSatisfied := isSatisfied & anActiveObjectClass checkConstraints.
			Transcript show: '.'].
	Transcript show: ' done!';
		 cr.
	isSatisfied
		ifTrue: [Transcript show: 'All classes of ' , self name , ' hierarchy are compatible.';
				 cr]
		ifFalse: [Transcript show: 'Some classes of ' , self name , ' hierarchy are incompatible.';
				 cr;
				 show: 'Please check the Transcript window.'].
	^ isSatisfied