public routines
PublicSearchFor: key 
	"Search for a key by creating a new searcher active object."
	"Note that method searchFor: MUST be a public routine
	because otherwise 
	it creates a deadlock
	(because the searcher will issue a request to the 
	symbol table).
	This is safe because this method makes no assignment."
	^ Searcher new active goLookFor: key inTable: aself