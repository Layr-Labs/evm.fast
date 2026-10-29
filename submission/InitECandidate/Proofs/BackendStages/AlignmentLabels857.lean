import InitECandidate.Proofs.BackendStages.Alignment857
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_857 : List (Nat × Nat) :=
[(10, 939856), (9, 939832), (8, 939828), (7, 939800), (3, 939792), (2, 939768), (6, 939712), (1, 939652), (5, 939652)]
theorem localLabelsFinal_857_eq : LabToTarget.sectionLabels 939636 Alignment857.lines [] = (939856, localLabelsFinal_857) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_857_eq
end InitECandidate.Proofs.BackendStages
