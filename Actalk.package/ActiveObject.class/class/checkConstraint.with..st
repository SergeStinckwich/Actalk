compatibility constraints
checkConstraint: class1 with: class2 
	"Check one compatibility constraint by testing if class1 is equal or a 
	subclass of class2.
	(class2 may be an ordered collection of 
	classes.)
	Return the boolean result of the check."
	| isSatisfied |
	isSatisfied := class2 isBehavior
				ifTrue: ["Only one class as a constraint."
					class1 isEqualOrSubclassOf: class2]
				ifFalse: [class2 isSequenceable
						ifTrue: ["The constraint is an ordered collection of 
							classes.
						At least one of them should be 
							verified. "
							class2
								inject: false
								into: [:boolean :class | boolean
										| (class1 isEqualOrSubclassOf: class)]]
						ifFalse: ["The constraint is neither a class nor an ordered 
							collection of classes."
							self error: 'compatibility constraint not valid']].
	isSatisfied
		ifFalse: [Transcript show: 'constraint compatibility violation : ' , class1 name , ' should be a subclass of ' , class2 printString;
				 cr].
	^ isSatisfied