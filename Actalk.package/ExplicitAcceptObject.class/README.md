Class ExplicitAcceptObject defines active objects behaviors with explicit acceptance of messages.

The behavior may explicitly specify within a method body that it is looking for a certain set of messages to accept.
Method answer: accepts a message matching among a set (array) of selectors.
(It is named answer: as in the POOL language, see category Actalk-Ext-Pool).
Note that construct answer: is equivalent to construct waitFor:andDo: from class AbclObject except that it simply performs the standard method associated to the message (selector) accepted.

Method answer is blocking (until it found a matching message).
Method unBlockingAnswer: is not.

Note that method answer: returns the value of the computation of the message. Method unBlockingAnswer: return true or false whether some matching message has been found and accepted.

Class ExplicitAcceptObject is defined as a subclass of class ImplicitReplyObject in order to inherit (convenient) implicit reply of messages.