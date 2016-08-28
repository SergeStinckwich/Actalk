example
readerPriorityExample
	"self readerPriorityExample"

	((self new readers: 3 writers: 2 numberSteps: 3)
		active: ReaderPriorityBookActivity) start