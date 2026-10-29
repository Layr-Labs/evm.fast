import InitECandidate.Proofs.BackendStages.Alignment321
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_321 : List (Nat × Nat) :=
[(26, 253888), (25, 253852), (23, 253852), (21, 253848), (9, 253824), (8, 253784), (20, 253728), (22, 253696),
  (19, 253660), (7, 253640), (6, 253604), (18, 253548), (17, 253512), (5, 253504), (4, 253480), (16, 253424),
  (15, 253384), (14, 253380), (13, 253364), (3, 253348), (2, 253316), (12, 253260), (24, 253204), (1, 253172),
  (11, 253172)]
theorem localLabelsFinal_321_eq : LabToTarget.sectionLabels 253156 Alignment321.lines [] = (253888, localLabelsFinal_321) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_321_eq
end InitECandidate.Proofs.BackendStages
