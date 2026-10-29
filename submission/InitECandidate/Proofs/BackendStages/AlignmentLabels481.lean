import InitECandidate.Proofs.BackendStages.Alignment481
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_481 : List (Nat × Nat) :=
[(14, 362140), (13, 362116), (12, 362072), (5, 362052), (4, 362016), (11, 361960), (10, 361876), (9, 361856),
  (3, 361816), (2, 361760), (8, 361704), (1, 361644), (7, 361644)]
theorem localLabelsFinal_481_eq : LabToTarget.sectionLabels 361628 Alignment481.lines [] = (362140, localLabelsFinal_481) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_481_eq
end InitECandidate.Proofs.BackendStages
