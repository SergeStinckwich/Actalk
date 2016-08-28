version compatibility
actor
	"Compatibility with version 3.02 and before."
	Transcript show: self class name , ' should now use the selector active and not actor.';
		 cr.
	^ self active