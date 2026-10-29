import InitECandidate.Proofs.BackendStages.Alignment646
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_646 : List (Nat × Nat) :=
[(22, 554332), (16, 554320), (21, 554188), (20, 554060), (7, 553940), (6, 553792), (19, 553736), (18, 553644),
  (5, 553624), (4, 553588), (17, 553532), (15, 553244), (11, 553240), (14, 553108), (13, 553100), (3, 553068),
  (2, 553020), (12, 552964), (10, 552840), (1, 548972), (9, 548972)]
theorem localLabelsFinal_646_eq : LabToTarget.sectionLabels 548956 Alignment646.lines [] = (554332, localLabelsFinal_646) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_646_eq
end InitECandidate.Proofs.BackendStages
