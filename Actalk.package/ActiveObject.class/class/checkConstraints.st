compatibility constraints
checkConstraints
	"Check if active object class, activity class, and address class are 
	mutually compatible."
	"We need to create an instance, and its associated activity and address."
	"Note that we are using basicNew in order to bypass any initialization 
	method. "
	| isSatisfied object activity address |
	object := self basicNew.
	activity := object activityClass basicNew.
	address := (activity computeAddressClass: object addressClass) basicNew.
	isSatisfied := (self checkConstraint: activity class with: object activityConstraint)
				& (self checkConstraint: address class with: object addressConstraint)
				& (self checkConstraint: object class with: activity objectConstraint)
				& (self checkConstraint: address class with: activity addressConstraint)
				& (self checkConstraint: object class with: address objectConstraint)
				& (self checkConstraint: activity class with: address activityConstraint).
	"Conjonction of all 6 constraint checks."
	"Check constraints specified by the active object class."
	"Check constraints specified by the activity class."
	"Check constraints specified by the address class."
	isSatisfied
		ifFalse: [Transcript show: self name , ' has compatibility problem with: ' , activity class name , ' and ' , address class name;
				 cr].
	^ isSatisfied