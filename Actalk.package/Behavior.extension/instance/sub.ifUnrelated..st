*actalk
sub: aClass ifUnrelated: anExceptionBlock 
	"Answer the subclass, that is the most specialized of both classes
	in case 
	they belong to the same same hierarchy.
	Otherwise (if they cannot be 
	related), evaluate and return the exception block."
	self = aClass
		ifTrue: [^ self].
	(self inheritsFrom: aClass)
		ifTrue: [^ self].
	(aClass inheritsFrom: self)
		ifTrue: [^ aClass].
	^ anExceptionBlock value