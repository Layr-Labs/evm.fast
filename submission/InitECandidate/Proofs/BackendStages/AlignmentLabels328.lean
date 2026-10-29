import InitECandidate.Proofs.BackendStages.Alignment328
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_328 : List (Nat × Nat) :=
[(19, 258856), (18, 258836), (7, 258820), (6, 258792), (17, 258736), (16, 258696), (5, 258688), (4, 258664),
  (15, 258608), (14, 258580), (12, 258580), (3, 258576), (2, 258560), (11, 258504), (13, 258468), (10, 258444),
  (1, 258420), (9, 258420)]
theorem localLabelsFinal_328_eq : LabToTarget.sectionLabels 258404 Alignment328.lines [] = (258856, localLabelsFinal_328) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_328_eq
end InitECandidate.Proofs.BackendStages
