import InitECandidate.Proofs.BackendStages.Alignment806
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_806 : List (Nat × Nat) :=
[(25, 866132), (24, 866124), (23, 866104), (9, 866092), (8, 866064), (22, 866008), (21, 865968), (20, 865948),
  (7, 865936), (6, 865908), (19, 865852), (18, 865816), (16, 865816), (15, 865804), (5, 865796), (4, 865776),
  (14, 865720), (13, 865672), (3, 865660), (2, 865632), (12, 865576), (17, 865524), (1, 865500), (11, 865500)]
theorem localLabelsFinal_806_eq : LabToTarget.sectionLabels 865484 Alignment806.lines [] = (866132, localLabelsFinal_806) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_806_eq
end InitECandidate.Proofs.BackendStages
