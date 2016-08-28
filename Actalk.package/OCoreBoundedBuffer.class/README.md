Class OCoreBoundedBuffer implements the bounded buffer with synchronization expressed in terms of user-defined events at meta-level. This implementation follows the description given in the paper Meta-level Architecture in OCore, which was presented at the OOPSLA'93 Reflection Workshop by Takashi Tomokiyo et al.

Activity class CurrentMessageActivity partially implements meta-level architecture of OCore. Actually Actalk events methods already provide much of OCore user-events facilities.

Two message queues are defined in order to store failed requests (put requests if buffer is full, get requests if buffer is empty). Pseudo-variable currentMessage reference is necessary to reference failed message and enqueue it. After completion of a message, one of the message queues containing waiting requests is rechecked for acceptance.

Note that this specification is rather low-level and not separated from the code. It is not very good at solving inheritance anomaly.