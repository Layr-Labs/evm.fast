import InitECandidate.Proofs.BackendStages.Alignment85
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_85 : List (Nat × Nat) :=
[(3, 8560), (2, 8440), (1, 8420)]
theorem localLabelsFinal_85_eq : LabToTarget.sectionLabels 8420 Alignment85.lines [] = (8560, localLabelsFinal_85) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_85_eq
end InitECandidate.Proofs.BackendStages
