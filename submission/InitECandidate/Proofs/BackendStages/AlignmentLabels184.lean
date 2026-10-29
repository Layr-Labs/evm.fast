import InitECandidate.Proofs.BackendStages.Alignment184
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_184 : List (Nat × Nat) :=
[(11, 99352), (3, 99344), (10, 99336), (9, 99328), (5, 99328), (7, 99320), (6, 99300), (4, 99256), (8, 99252),
  (2, 99216), (1, 99208)]
theorem localLabelsFinal_184_eq : LabToTarget.sectionLabels 99208 Alignment184.lines [] = (99352, localLabelsFinal_184) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_184_eq
end InitECandidate.Proofs.BackendStages
