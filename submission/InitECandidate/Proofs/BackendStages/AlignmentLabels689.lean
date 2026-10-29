import InitECandidate.Proofs.BackendStages.Alignment689
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_689 : List (Nat × Nat) :=
[(12, 630588), (7, 630572), (11, 630556), (10, 630540), (9, 630520), (3, 630500), (2, 630464), (8, 630408), (6, 630348),
  (1, 630336), (5, 630336)]
theorem localLabelsFinal_689_eq : LabToTarget.sectionLabels 630320 Alignment689.lines [] = (630588, localLabelsFinal_689) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_689_eq
end InitECandidate.Proofs.BackendStages
