import InitECandidate.Proofs.BackendStages.Alignment875
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_875 : List (Nat × Nat) :=
[(9, 978720), (8, 978708), (7, 978656), (3, 978636), (2, 978616), (6, 978560), (1, 978524), (5, 978524)]
theorem localLabelsFinal_875_eq : LabToTarget.sectionLabels 978504 Alignment875.lines [] = (978720, localLabelsFinal_875) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_875_eq
end InitECandidate.Proofs.BackendStages
