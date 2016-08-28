initialize
makeReadersAndWriters
	"Create and activate readers and writers of the book."
	1
		to: readers size
		do: [:i | readers at: i put: (Reader new
					number: i
					book: aself
					numberSteps: numberSteps) active].
	1
		to: writers size
		do: [:i | writers at: i put: (Writer new
					number: i
					book: aself
					numberSteps: numberSteps) active]