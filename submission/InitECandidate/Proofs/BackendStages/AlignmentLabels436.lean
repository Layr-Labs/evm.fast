import InitECandidate.Proofs.BackendStages.Alignment436
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_436 : List (Nat × Nat) :=
[(12, 323640), (11, 323604), (5, 323588), (4, 323556), (10, 323500), (9, 323456), (3, 323444), (2, 323416), (8, 323360),
  (1, 323316), (7, 323316)]
theorem localLabelsFinal_436_eq : LabToTarget.sectionLabels 323300 Alignment436.lines [] = (323640, localLabelsFinal_436) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_436_eq
end InitECandidate.Proofs.BackendStages
