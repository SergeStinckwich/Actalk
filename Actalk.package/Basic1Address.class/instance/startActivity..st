activity setting
startActivity: anActivity 
	"Initialize reference to the activity, calls the generic initialization 
	method, and then start the activity."
	activity := anActivity.
	self privateInitialize.
	activity startWithAddress: self