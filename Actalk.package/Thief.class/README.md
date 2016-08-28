Class Thief implements a thief whose activity is to rob (as well as to be robbed by) other thieves, that is fetching one of its things. If a thief has nothing to reply then he kills himself (replying his life).
The game is over when only one thief remains!

Class Thief is defined as a subclass of behavior class ObjectBodyObject in order to be able to directly specify its body.

The body explicitly specifies when and which messages it is willing to serve, e.g., to be robbed or to receive a thing he requested.
Note that in order to increase asynchrony, fetching one thing is expressed with two asynchronous unidirectional message sends (requesting and receiving).
This is also one simple way to manage the issue of thieves which happen to be killed and which then cannot reply anymore.

Instance Variables:

	name		<String>						the name of the thief.
	bag			<OrderedCollection>			the set of things owned by the thief.
	organization	<ThiefOrganization address>	the organization to which the thief belongs (is registered).