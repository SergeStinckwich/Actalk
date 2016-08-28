message passing
receiveMessage: aMessage withSendType: type inMessageQueue: queue 
	"Dispatch along public routine handling or synchronous message 
	passing. "
	type = #publicRoutine
		ifTrue: [^ activity acceptPublicRoutineMessage: aMessage].
	type = #synchronous
		ifTrue: [^ self synchronousSend: aMessage inMessageQueue: queue].
	^ super
		receiveMessage: aMessage
		withSendType: type
		inMessageQueue: queue