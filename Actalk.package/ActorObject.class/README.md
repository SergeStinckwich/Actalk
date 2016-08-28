Class ActorObject implements the behavior replacement model of actors (one kind of active object) stated by Gul Agha and Carl Hewitt in the actor computation model. (See the book Actors, by Gul Agha, MIT-Press, 1986).

In this model, one behavior computes exactly one message. It specifies its replacement behavior, that is the behavior which will compute next message (and so on). As soon as the replacement behavior is specified, processing of next message may take place. This leads to concurrent computation of several messages at once (intra-object concurrency).
(Meanwhile note that the behavior replacement concept is not powerful at actually controlling such concurrency, that is specifying synchronization conditions onto concurrent activations, see discussion in class EmptyBoundedBuffer comment within category Actalk-Ext-Actor-Examples).

On the opposite as long as the replacement behavior is not computed, the actor cannot accept next message. This will be used to express synchronization protocols, see category Actalk-Ext-Actor-Ext.

In the behavior replacement model, there is no assignment. The replacement behavior could be the same kind of behavior (instance of the same class of behaviors, see the example of class ActorCounter) with possible changes of values. The replacement behavior may as well be an instance of a different class of behaviors and implement a different structure. See for instance a clean implementation of join continuations (where no flag is needed to check if the first value has already been received) in category Actalk-Ext-Actor-JoinCont.

The behavior replacement concept may also be used as a basis to specify state transition in the example of the bounded buffer (see example class EmptyBoundedBuffer which can be replaced by behaviors PartialBoundedBuffer or FullBoundedBuffer depending on the state of the bounded buffer).

Class ActorObject is defined as a subclass of behavior kernel class ActiveObject.
The asssociated activity class is class SingleMessageActivity in order to ensure that the behavior will accept only one message.
Method replace: implements behavior replacement. If the behavior is unchanged one may reuse it.
Note that although the same behavior will then be shared by two processes, there is no inconsistency problem because there is no assignment. Method ready makes such an optimization when the behavior is constant during replacement.

Note that each method MUST specify a replacement behavior, even if the behavior is constant (then use method ready). Otherwise the actor won't be able to accept and process any following message and will remain stuck.
The replacement behavior should be specified as soon as possible in order to start next message processing.

Note that the instance variable named activity of class Address has now a slightly changed semantics.
It now represents the current (most recent) activity as many behaviors and their associated activities may be concurrently attached to the address of the actor.