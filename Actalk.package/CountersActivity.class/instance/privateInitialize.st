initialize
privateInitialize
	"Create the three synchronization counters dictionaries."
	super privateInitialize.
	self makeSynchroCounterDictionariesOnSelectors: bself class allScriptSelectors