private routines
extract: tree 
	"Extraction of the leaves of the tree."
	"This is some standard recursive traversal of a tree.
	The representation 
	of the tree is an array."
	"We use Processor yield in order to simulate simultaneity of computing 
	between the two extractors.
	Note that generic event methods are not 
	effective because this is a private routine."
	Processor yield.
	(tree isKindOf: Array)
		ifTrue: ["A non leaf, that is a tree."
			tree isEmpty
				ifFalse: ["Recursive extraction."
					self extract: tree left;
						 extract: tree right]]
		ifFalse: ["A leaf."
			Transcript show: self printString , ' : ' , tree printString;
				 cr.
			output reply: tree]