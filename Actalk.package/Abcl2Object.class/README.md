Class Abcl2Object defines where constraints on acceptance of messages and provides also information about the sender of a message.

Within a selective message acceptance, the where constraint acts as an additive constraint. Messages which do not match pattern and condition requirements are kept within the mailbox.
Method waitFor:where:andDo: is analog to method waitFo:andDo: plus the additional where constraint.

Management of the sender of a message is analog to class WithSenderObject (and its related activity and address classes).

Class Abcl2Object is a subclass of class Abcl1Object.