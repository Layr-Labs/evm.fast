import InitECandidate.Proofs.BackendStages.Alignment244
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_244 : List (Nat × Nat) :=
[(12, 179124), (11, 179112), (5, 179104), (4, 179084), (10, 179028), (9, 178996), (3, 178984), (2, 178960), (8, 178904),
  (1, 178856), (7, 178856)]
theorem localLabelsFinal_244_eq : LabToTarget.sectionLabels 178840 Alignment244.lines [] = (179124, localLabelsFinal_244) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_244_eq
end InitECandidate.Proofs.BackendStages
