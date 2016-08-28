accessing method dictionary
allScriptSelectors
	"Answer the set of all the script selectors known by an active object 
	behavior class."
	^ self allSelectorsInCategory: #script untilClass: ActiveObject