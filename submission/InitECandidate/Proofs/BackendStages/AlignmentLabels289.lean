import InitECandidate.Proofs.BackendStages.Alignment289
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_289 : List (Nat × Nat) :=
[(20, 230964), (19, 230940), (7, 230916), (6, 230880), (18, 230824), (17, 230776), (16, 230764), (15, 230748),
  (5, 230720), (4, 230676), (14, 230620), (13, 230552), (11, 230552), (3, 230540), (2, 230516), (10, 230460),
  (12, 230420), (1, 230400), (9, 230400)]
theorem localLabelsFinal_289_eq : LabToTarget.sectionLabels 230384 Alignment289.lines [] = (230964, localLabelsFinal_289) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_289_eq
end InitECandidate.Proofs.BackendStages
