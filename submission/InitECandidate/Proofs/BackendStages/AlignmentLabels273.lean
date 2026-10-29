import InitECandidate.Proofs.BackendStages.Alignment273
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_273 : List (Nat × Nat) :=
[(9, 209188), (8, 209172), (7, 209148), (3, 209140), (2, 209116), (6, 209060), (1, 209016), (5, 209016)]
theorem localLabelsFinal_273_eq : LabToTarget.sectionLabels 209000 Alignment273.lines [] = (209188, localLabelsFinal_273) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_273_eq
end InitECandidate.Proofs.BackendStages
