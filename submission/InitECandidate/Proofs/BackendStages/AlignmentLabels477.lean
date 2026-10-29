import InitECandidate.Proofs.BackendStages.Alignment477
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_477 : List (Nat × Nat) :=
[(8, 359616), (7, 359604), (3, 359596), (2, 359576), (6, 359520), (1, 359480), (5, 359480)]
theorem localLabelsFinal_477_eq : LabToTarget.sectionLabels 359464 Alignment477.lines [] = (359616, localLabelsFinal_477) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_477_eq
end InitECandidate.Proofs.BackendStages
