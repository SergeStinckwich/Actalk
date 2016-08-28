activity setting
startNewActivity: anActivity 
	"As for method startActivity, but does not call the generic initialization 
	method
	(which should be only performed only once when creating the 
	initial activity)."
	"This method is useful to start new activities assigned to a single address, 
	as for the Actor model of computation.
	See class ActorObject, in category 
	Actalk-Ext-Actor. "
	activity := anActivity.
	activity startWithAddress: self