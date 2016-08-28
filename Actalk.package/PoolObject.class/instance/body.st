body
body
	"Default Pool body is an endless loop to serially accept any message."
	| allSelectors |
	allSelectors := self class allScriptSelectors.
	[true]
		whileTrue: [self answer: allSelectors]