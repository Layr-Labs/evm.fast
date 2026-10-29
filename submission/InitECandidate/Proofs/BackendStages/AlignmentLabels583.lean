import InitECandidate.Proofs.BackendStages.Alignment583
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_583 : List (Nat × Nat) :=
[(20, 435888), (19, 435876), (9, 435868), (8, 435848), (18, 435792), (17, 435764), (7, 435760), (6, 435744),
  (16, 435688), (15, 435660), (5, 435656), (4, 435636), (14, 435580), (13, 435556), (3, 435552), (2, 435536),
  (12, 435480), (1, 435448), (11, 435448)]
theorem localLabelsFinal_583_eq : LabToTarget.sectionLabels 435432 Alignment583.lines [] = (435888, localLabelsFinal_583) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_583_eq
end InitECandidate.Proofs.BackendStages
