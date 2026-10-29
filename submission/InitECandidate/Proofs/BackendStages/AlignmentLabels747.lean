import InitECandidate.Proofs.BackendStages.Alignment747
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_747 : List (Nat × Nat) :=
[(8, 746288), (7, 746276), (3, 746268), (2, 746248), (6, 746192), (1, 746156), (5, 746156)]
theorem localLabelsFinal_747_eq : LabToTarget.sectionLabels 746140 Alignment747.lines [] = (746288, localLabelsFinal_747) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_747_eq
end InitECandidate.Proofs.BackendStages
