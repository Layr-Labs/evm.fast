import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Pass3
import InitECandidate.Proofs.FrontendStages.Loop.Context
import InitECandidate.Proofs.LoopComputation

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Loop
open Flapjack

-- Only names and parameter counts are inspected; bodies remain unused.
theorem functionEntries_eq : InitECandidate.Proofs.LoopComputation.functionEntries pass3 =
    InitECandidate.Proofs.LoopComputation.functionEntries signatures := by
  kernel_rfl

theorem functionMap_eq : crepToLoopMakeFuncsExactExecutable pass3 = functionMap :=
  InitECandidate.Proofs.LoopComputation.makeFuncs_congr _ _ functionEntries_eq

#print axioms functionEntries_eq
#print axioms functionMap_eq
end InitECandidate.Proofs.FrontendStages.Loop
