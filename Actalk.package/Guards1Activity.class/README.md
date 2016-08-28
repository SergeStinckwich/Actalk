Class Guards1Activity implements a model of synchronization with guards.
It is defined as a subclass of activity class SelectiveAcceptActivity.
This means messages are resent if they are not acceptable. Acceptance is defined as the corresponding guard evaluationg to true.
Guards are easily defined as simple methods.

Note that because of resending messages whose guard evaluates to false, this initial implementation model of guards is somewhat costly, plus it does not preserve message ordering preservation.
See class GuardsActivity for a more sophisticated and optimized implementation.