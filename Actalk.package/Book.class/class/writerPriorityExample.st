example
writerPriorityExample
	"self writerPriorityExample"

	((self new readers: 3 writers: 2 numberSteps: 3)
		active: WriterPriorityBookActivity) start