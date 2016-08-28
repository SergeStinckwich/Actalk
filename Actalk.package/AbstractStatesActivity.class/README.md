Class AbstractStatesActivity implements synchronization of message acceptance by specification of abstract states.
Class AbstractStatesActivity is defined as a subclass of abstract class ImplicitReplyActivity.

Each abstract state is a symbol which represents a set of method selectors which are enabled, that is that the behavior may accept. After each message processing, the behavior may change (make transition) its abstract state and consequently compute its new set of enabled selectors.
E.g., a bounded buffer which becomes full will change its abstract state to #full to disable put: method (then the set of enabled selectors, implemented by an array, becomes #(get)).
An abstract state is represented by an abstract state name, that is a symbol, e.g., #partial, and implemented by a method which returns the actual array of enabled selectors, e.g., #(get put:).

Note that abstract states hold sets of enabled selectors (here represented as arrays). One may combine abstract states by union operation (+) or difference (-) in order to define or redefine abstract states in a highly modular and abstract way (thus more easily inherited). For instance abstract state #partial should be defined as union of abstract states #empty and #full. See category Actalk-Synchro-AbstractStates-Ex.

About the inheritance anomaly issue, this methodology proves to be expressive and modular (being less efficient in face of a repartitioning problem, see example of class AbstractStatesGet2BoundedBuffer).

The user should define two methods which are mandatory for a behavior class (but they may be inherited).
Method initialAbstractState returns the initial abstract state of a newly created behavior.
Method nextAbstractStateAfter: computes and returns the next abstract state. It specifies the transition to next abstract state.
Both methods should return a symbol which is one among possible (defined) abstract states.

Note that the concept of abstract state is related to the concept of behavior replacement and its use to control state synchronization (see categories Actalk-Ext-Actor-Examples and Actalk-Ext-Actor-Ext-Ex). On the other hand in this model the behavior remains constant and only the set of enabled methods may change. This model is more concise and efficient at the cost of reducing concurrency (no intra-object concurrency).

Instance Variables:

	enabledSelectors	<Array> of current enabled selectors.