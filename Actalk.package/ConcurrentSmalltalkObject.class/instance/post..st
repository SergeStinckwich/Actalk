post actions
post: aBlock 
	"Specify post actions (specified within a block) which are to be 
	computed
	after completing the method and its return.
	This frees the 
	sender from unneeded waiting, as post actions will take place after 
	return.
	Typical use is for reinitialization."
	self activity postBlock: aBlock