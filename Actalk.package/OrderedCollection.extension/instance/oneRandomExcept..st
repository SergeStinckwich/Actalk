*actalk
oneRandomExcept: anElement
	"Return pseudo-randomly one element of the collection.
	We assume that the client checks that there is at least  one more element than anElement."

	| i item |
	item := anElement.
	[item = anElement] whileTrue:
		[i := 1 + ((Random new next) * (self size)) truncated.
		item := self at: i].
	^item