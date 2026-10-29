import InitECandidate.Proofs.BackendStages.Alignment466
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_466 : List (Nat × Nat) :=
[(16, 357688), (15, 357676), (7, 357664), (6, 357640), (14, 357584), (13, 357552), (5, 357540), (4, 357516),
  (12, 357460), (11, 357428), (3, 357408), (2, 357376), (10, 357320), (1, 357252), (9, 357252)]
theorem localLabelsFinal_466_eq : LabToTarget.sectionLabels 357236 Alignment466.lines [] = (357688, localLabelsFinal_466) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_466_eq
end InitECandidate.Proofs.BackendStages
