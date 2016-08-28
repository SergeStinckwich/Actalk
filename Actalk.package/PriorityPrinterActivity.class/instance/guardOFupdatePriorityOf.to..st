guards
guardOFupdatePriorityOf: group to: newPriority
	"No restriction as update of the table is managed by the accept event.
	As a consequence consistency of the priority table is ensured by atomicity (mutual exclusion) of events and guard testing."

	^true