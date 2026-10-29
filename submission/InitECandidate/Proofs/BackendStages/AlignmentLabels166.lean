import InitECandidate.Proofs.BackendStages.Alignment166
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_166 : List (Nat × Nat) :=
[(14, 93972), (13, 93960), (11, 93960), (5, 93944), (4, 93916), (10, 93860), (12, 93824), (9, 93808), (3, 93800),
  (2, 93776), (8, 93720), (1, 93688), (7, 93688)]
theorem localLabelsFinal_166_eq : LabToTarget.sectionLabels 93672 Alignment166.lines [] = (93972, localLabelsFinal_166) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_166_eq
end InitECandidate.Proofs.BackendStages
