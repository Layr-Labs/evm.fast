import InitECandidate.Proofs.BackendStages.Alignment175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_175 : List (Nat × Nat) :=
[(9, 96624), (8, 96612), (3, 96604), (2, 96580), (7, 96524), (6, 96492), (1, 96468), (5, 96468)]
theorem localLabelsFinal_175_eq : LabToTarget.sectionLabels 96452 Alignment175.lines [] = (96624, localLabelsFinal_175) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_175_eq
end InitECandidate.Proofs.BackendStages
