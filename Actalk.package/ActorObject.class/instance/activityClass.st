default classes
activityClass
	"ActorObject program construct method
		replace:
			makes assumption that each activity computes only one message
	(single message activity).
	Otherwise this may result in incoherences,
	causally unrelated behavior activities accessing concurrently to the same mailBox."

	^SingleMessageActivity