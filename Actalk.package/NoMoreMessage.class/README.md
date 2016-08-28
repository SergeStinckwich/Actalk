Class NoMoreBehavior is a class of terminal replacement behaviors which produces an error if it receives a message.
The only purpose is to check possible programming errors for actors which are expected to receive a specified amount of messages. Some unexpected message would then raise an error.
Continuations are usually such kinds of actors. An example could be a binary join continuation such as ReplaceBinaryAdder (see category Actalk-Actor-JoinCont).

Note that if no terminal replacement behavior is specified, an extra message will be enqueued silently to the mailbox but will never be processed.

Note that using NoMoreMessage creates a replacement behavior which is suspended onto the mailbox (and should stay as such in normal case). Because such waiting processes are not implicitly recovered by the garbage collector it produces a little memory lost.
For this reason, we usually actually do not use NoMoreMessage behaviors except for specific checks.