import InitECandidate.Proofs.BackendStages.Alignment317
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_317 : List (Nat × Nat) :=
[(17, 249928), (16, 249912), (15, 249880), (5, 249860), (4, 249824), (14, 249768), (13, 249720), (11, 249720),
  (3, 249696), (2, 249660), (10, 249604), (12, 249560), (9, 249532), (8, 249500), (1, 249476), (7, 249476)]
theorem localLabelsFinal_317_eq : LabToTarget.sectionLabels 249460 Alignment317.lines [] = (249928, localLabelsFinal_317) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_317_eq
end InitECandidate.Proofs.BackendStages
