import InitECandidate.Proofs.BackendStages.Alignment719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_719 : List (Nat × Nat) :=
[(9, 723376), (8, 723296), (3, 723288), (2, 723264), (7, 723208), (6, 723032), (1, 723012), (5, 723012)]
theorem localLabelsFinal_719_eq : LabToTarget.sectionLabels 722996 Alignment719.lines [] = (723376, localLabelsFinal_719) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_719_eq
end InitECandidate.Proofs.BackendStages
