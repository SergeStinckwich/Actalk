accessing
value
	"Consult the value of a future by waiting onto its semaphore.
	Then 
	return self because the future has become the value
	before actual 
	resumption of the method."
	semaphore wait