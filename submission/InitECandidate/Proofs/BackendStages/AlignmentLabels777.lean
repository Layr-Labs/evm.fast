import InitECandidate.Proofs.BackendStages.Alignment777
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_777 : List (Nat × Nat) :=
[(24, 790700), (23, 790688), (11, 790676), (10, 790652), (22, 790596), (21, 790560), (9, 790552), (8, 790528),
  (20, 790472), (19, 790440), (7, 790432), (6, 790412), (18, 790356), (17, 790296), (5, 790288), (4, 790264),
  (16, 790208), (15, 790172), (3, 790168), (2, 790148), (14, 790092), (1, 790056), (13, 790056)]
theorem localLabelsFinal_777_eq : LabToTarget.sectionLabels 790040 Alignment777.lines [] = (790700, localLabelsFinal_777) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_777_eq
end InitECandidate.Proofs.BackendStages
