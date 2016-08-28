behavior replacement
replace: replacementBehavior 
	"Specify behavior replacement (assignment of a new active object and 
	activity to the address).
	Note that this replacement behavior message is 
	processed by the address
	and consequently may be sent externally by 
	another actor.
	(See example of class OverdraftManager in category 
	Actalk-Ext-Actor-Ext-Ex.) "
	self
		startNewActivity: (replacementBehavior activityClass new activeObject: replacementBehavior)