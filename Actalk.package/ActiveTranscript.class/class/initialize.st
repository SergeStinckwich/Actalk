initialize
initialize
	"Create the predefined ActiveTranscript active object refered by global variable Print."
	"May need some reinitialization in case the Print active object has been terminated."

	"ActiveTranscript initialize"

	Smalltalk at: #Print put: self new active