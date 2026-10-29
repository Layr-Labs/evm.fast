import InitECandidate.Proofs.BackendStages.Alignment211
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_211 : List (Nat × Nat) :=
[(9, 123264), (8, 123208), (3, 123200), (2, 123176), (7, 123120), (6, 123060), (1, 123000), (5, 123000)]
theorem localLabelsFinal_211_eq : LabToTarget.sectionLabels 122984 Alignment211.lines [] = (123264, localLabelsFinal_211) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_211_eq
end InitECandidate.Proofs.BackendStages
