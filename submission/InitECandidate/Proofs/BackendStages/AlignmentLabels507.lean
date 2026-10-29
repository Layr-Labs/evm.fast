import InitECandidate.Proofs.BackendStages.Alignment507
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_507 : List (Nat × Nat) :=
[(32, 376404), (31, 376392), (15, 376384), (14, 376364), (30, 376308), (29, 376280), (13, 376276), (12, 376260),
  (28, 376204), (27, 376176), (11, 376172), (10, 376152), (26, 376096), (25, 376068), (9, 376048), (8, 376012),
  (24, 375956), (23, 375928), (7, 375884), (6, 375828), (22, 375772), (21, 375728), (5, 375724), (4, 375704),
  (20, 375648), (19, 375608), (3, 375604), (2, 375584), (18, 375528), (1, 375500), (17, 375500)]
theorem localLabelsFinal_507_eq : LabToTarget.sectionLabels 375484 Alignment507.lines [] = (376404, localLabelsFinal_507) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_507_eq
end InitECandidate.Proofs.BackendStages
