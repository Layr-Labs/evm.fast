import InitECandidate.Proofs.BackendStages.Alignment384
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_384 : List (Nat × Nat) :=
[(29, 295112), (28, 295056), (27, 295036), (26, 295008), (23, 295008), (24, 295000), (22, 294920), (25, 294908),
  (21, 294884), (20, 294840), (19, 294836), (17, 294836), (16, 294828), (18, 294808), (15, 294796), (7, 294748),
  (6, 294684), (14, 294628), (13, 294516), (5, 294472), (4, 294412), (12, 294356), (11, 294292), (3, 294284),
  (2, 294260), (10, 294204), (1, 294144), (9, 294144)]
theorem localLabelsFinal_384_eq : LabToTarget.sectionLabels 294128 Alignment384.lines [] = (295112, localLabelsFinal_384) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_384_eq
end InitECandidate.Proofs.BackendStages
