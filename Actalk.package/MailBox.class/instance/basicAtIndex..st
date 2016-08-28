accessing by index
basicAtIndex: i 
	"Look for and fetch the ith message in the mailbox.
	No 
	check/suspension.
	We assume that there is at least i elements otherwise 
	an error is raised."
	^ [accessProtect
		critical: [contentsArray at: i]] valueUninterruptably