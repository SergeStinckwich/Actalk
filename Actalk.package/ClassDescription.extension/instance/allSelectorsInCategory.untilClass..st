*actalk
allSelectorsInCategory: aCategoryName untilClass: aClass 
	"Answer a set of all the message selectors belonging to a category within 
	a subhierarchy,
	that is from receiver until (including) the class 
	specified. "
	"The class boundary allowes to restrict the search to some subhierarchy, 
	e.g., of Actalk."
	"We stop when reaching one hierarchy root."
	^ (self == aClass | superclass isNil
		ifTrue: [Set new]
		ifFalse: [superclass allSelectorsInCategory: aCategoryName untilClass: aClass])
		addAll: (self selectorsInCategory: aCategoryName);
		 yourself"Return the constructed set because addAll: returns the addition only."