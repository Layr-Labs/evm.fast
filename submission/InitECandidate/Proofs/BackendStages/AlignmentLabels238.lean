import InitECandidate.Proofs.BackendStages.Alignment238
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_238 : List (Nat × Nat) :=
[(12, 175528), (11, 175516), (5, 175508), (4, 175488), (10, 175432), (9, 175404), (3, 175392), (2, 175368), (8, 175312),
  (1, 175272), (7, 175272)]
theorem localLabelsFinal_238_eq : LabToTarget.sectionLabels 175256 Alignment238.lines [] = (175528, localLabelsFinal_238) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_238_eq
end InitECandidate.Proofs.BackendStages
