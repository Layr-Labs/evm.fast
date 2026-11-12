import InitECandidate.Solver.Band.Rules
import InitECandidate.Solver.Band.Disp
import InitECandidate.Solver.Band.Dec
import InitECandidate.Solver.Band.RootPre
import InitECandidate.Solver.Band.Attempt

/-!
# The conditional cost band (band1): all modules

* `Rules`: `costP_decCall`, `costP_decCallT`, `cost_relRaise`.
* `Disp`: `dcost` and **`op_dispatch_condCost`** (`opCost`).
* `Dec`: templates T1–T3 (`dwnm_costP`, `dwn_costP`, `dwtm_costP`) and `decRoot`.
* `RootPre`: the root preconditions from `G` (`delPre_of_G`, `fillPre_of_G`, `dwPre_of_wsW`,
  `WitG`).
* `Attempt`: template T4 (`att_condCost`, `att_chain`).
-/
