*actalk
isEqualOrSubclassOf: aClass 
	^ self = aClass
		or: [self inheritsFrom: aClass]