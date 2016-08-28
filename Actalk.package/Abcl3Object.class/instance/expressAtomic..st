express method construct
expressAtomic: aBlock 
	"Ensure that computation expressed within aBlock won't be interrupted 
	by an express message.
	May be used within script methods as well as 
	private routines."
	"WARNING: This construct should NOT be used within an express 
	method,
	otherwise the express method computation will DEADLOCK!!
	Also 
	express atomic blocks cannot be embedded otherwise it would also result 
	in a deadlock.
	This is a current limitation of this simple 
	simulation/implementation. "
	self activity expressExclusionSemaphore critical: aBlock