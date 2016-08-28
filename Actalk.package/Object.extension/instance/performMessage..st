*actalk
performMessage: aMessage 
	"Make the receiver compute (perform) a given message."
	"Useful for Actalk: basic way for a behavior to process messages."
	^ self perform: aMessage selector withArguments: aMessage arguments