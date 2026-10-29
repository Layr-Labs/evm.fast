import InitECandidate.Proofs.BackendStages.Alignment568
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_568 : List (Nat × Nat) :=
[(16, 425244), (15, 425232), (7, 425224), (6, 425204), (14, 425148), (13, 425120), (5, 425116), (4, 425100),
  (12, 425044), (11, 425000), (3, 424996), (2, 424980), (10, 424924), (1, 424892), (9, 424892)]
theorem localLabelsFinal_568_eq : LabToTarget.sectionLabels 424876 Alignment568.lines [] = (425244, localLabelsFinal_568) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_568_eq
end InitECandidate.Proofs.BackendStages
