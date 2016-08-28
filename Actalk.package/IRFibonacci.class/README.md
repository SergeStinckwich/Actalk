Class IRFibonacci implements fibonacci computation with implicit replies.

There is no need for explicit reply destinations. Two new active objects are created to compute the two recursive sub computations. Both replies are future objects which are summed up.

If the value of the receiver of the + operation is not computed yet, + implicitly waits for the assignment of the future (see class Future). But if the receiver is computed but the argument is not computed yet, + operation will fail (because it expects a numeric argument, not a future). Meanwhile, such a failure exchanges argument with receiver and retries to perform the operation. So eventually the addition is to be completed correcttly without failure.