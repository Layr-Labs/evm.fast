import InitECandidate.Proofs.BackendStages.Alignment673
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_673 : List (Nat × Nat) :=
[(11, 603560), (7, 603544), (10, 603528), (9, 603488), (3, 603460), (2, 603416), (8, 603360), (6, 603244), (1, 603220),
  (5, 603220)]
theorem localLabelsFinal_673_eq : LabToTarget.sectionLabels 603204 Alignment673.lines [] = (603560, localLabelsFinal_673) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_673_eq
end InitECandidate.Proofs.BackendStages
