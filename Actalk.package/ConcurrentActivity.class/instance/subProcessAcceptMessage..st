message handling
subProcessAcceptMessage: aMessage 
	"Acceptance of a message by a subprocess."
	"Default is standard acceptMessage: as for a primary process.
	Note we 
	use super in order to refer to inherited definition of 
	acceptMessage:
	because it is redefined within this class."
	super acceptMessage: aMessage