import InitECandidate.Proofs.BackendStages.Alignment493
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_493 : List (Nat × Nat) :=
[(8, 366928), (7, 366916), (3, 366908), (2, 366884), (6, 366828), (1, 366776), (5, 366776)]
theorem localLabelsFinal_493_eq : LabToTarget.sectionLabels 366760 Alignment493.lines [] = (366928, localLabelsFinal_493) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_493_eq
end InitECandidate.Proofs.BackendStages
