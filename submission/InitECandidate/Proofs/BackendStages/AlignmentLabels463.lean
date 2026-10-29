import InitECandidate.Proofs.BackendStages.Alignment463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_463 : List (Nat × Nat) :=
[(3, 356912), (2, 356904), (1, 356888)]
theorem localLabelsFinal_463_eq : LabToTarget.sectionLabels 356888 Alignment463.lines [] = (356912, localLabelsFinal_463) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_463_eq
end InitECandidate.Proofs.BackendStages
