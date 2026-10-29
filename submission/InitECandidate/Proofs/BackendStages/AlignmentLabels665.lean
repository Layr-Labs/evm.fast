import InitECandidate.Proofs.BackendStages.Alignment665
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_665 : List (Nat × Nat) :=
[(21, 596092), (13, 596080), (20, 596048), (19, 596012), (17, 596012), (7, 595980), (6, 595928), (16, 595872),
  (18, 595816), (15, 595784), (5, 595756), (4, 595708), (14, 595652), (12, 595584), (11, 595580), (3, 595544),
  (2, 595492), (10, 595436), (1, 595348), (9, 595348)]
theorem localLabelsFinal_665_eq : LabToTarget.sectionLabels 595332 Alignment665.lines [] = (596092, localLabelsFinal_665) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_665_eq
end InitECandidate.Proofs.BackendStages
