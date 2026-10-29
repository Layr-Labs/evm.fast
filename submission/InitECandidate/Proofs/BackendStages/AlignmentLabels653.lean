import InitECandidate.Proofs.BackendStages.Alignment653
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_653 : List (Nat × Nat) :=
[(33, 570936), (32, 570924), (15, 570916), (14, 570896), (31, 570840), (30, 570808), (13, 570784), (12, 570732),
  (29, 570676), (28, 570616), (11, 570580), (10, 570528), (27, 570472), (26, 570376), (9, 570352), (8, 570300),
  (25, 570244), (24, 570196), (7, 570168), (6, 570124), (23, 570068), (22, 570020), (5, 570016), (4, 569996),
  (21, 569940), (20, 569904), (19, 569884), (3, 569860), (2, 569820), (18, 569764), (1, 569692), (17, 569692)]
theorem localLabelsFinal_653_eq : LabToTarget.sectionLabels 569676 Alignment653.lines [] = (570936, localLabelsFinal_653) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_653_eq
end InitECandidate.Proofs.BackendStages
