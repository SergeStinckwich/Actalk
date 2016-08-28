abstract states
partial
	"Note that we use union of sets (in fact concatenation of arrays) for 
	better modularity.
	See class AbstractStatesGet2BoundedBufferActivity 
	redefinition of #full,
	and consequently implicit redefinition of #partial."
	^ self empty + self full