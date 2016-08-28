script
consultAndReplyTo: r withSelector: replySelector 
	"If the reply selector is variable (e.g., reply: or store: or print:...),
	we 
	need to pass it as an argument (replySelector) and compute it
	(method 
	reply:withSelector: of class ActorBehavior)."
	r reply: contents withSelector: replySelector