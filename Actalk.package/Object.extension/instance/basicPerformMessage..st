*actalk
basicPerformMessage: aMessage 
	"Make the receiver compute (perform) a given message."
	"Useful for Actalk: basic way for a behavior to process messages."
	"As for Behavior method basicNew, this method should never be 
	rewritten in a subclass."
	^ self perform: aMessage selector withArguments: aMessage arguments