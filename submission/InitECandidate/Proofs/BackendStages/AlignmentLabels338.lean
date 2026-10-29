import InitECandidate.Proofs.BackendStages.Alignment338
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_338 : List (Nat × Nat) :=
[(9, 266772), (8, 266756), (7, 266732), (3, 266724), (2, 266700), (6, 266644), (1, 266600), (5, 266600)]
theorem localLabelsFinal_338_eq : LabToTarget.sectionLabels 266584 Alignment338.lines [] = (266772, localLabelsFinal_338) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_338_eq
end InitECandidate.Proofs.BackendStages
