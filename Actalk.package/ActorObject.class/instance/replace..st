behavior replacement
replace: replacementBehavior
	"Specify behavior replacement (assignment of a new behavior and activity to the address)."

	aself startNewActivity:
		(replacementBehavior activityClass new
			activeObject: replacementBehavior)