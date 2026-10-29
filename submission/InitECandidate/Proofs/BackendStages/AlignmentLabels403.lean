import InitECandidate.Proofs.BackendStages.Alignment403
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_403 : List (Nat × Nat) :=
[(13, 305952), (12, 305940), (11, 305920), (5, 305912), (4, 305888), (10, 305832), (9, 305784), (3, 305780),
  (2, 305760), (8, 305704), (1, 305676), (7, 305676)]
theorem localLabelsFinal_403_eq : LabToTarget.sectionLabels 305660 Alignment403.lines [] = (305952, localLabelsFinal_403) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_403_eq
end InitECandidate.Proofs.BackendStages
