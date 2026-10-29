import InitECandidate.Proofs.BackendStages.Alignment239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_239 : List (Nat × Nat) :=
[(20, 176064), (19, 176052), (9, 176044), (8, 176024), (18, 175968), (17, 175940), (7, 175932), (6, 175912),
  (16, 175856), (15, 175828), (5, 175808), (4, 175772), (14, 175716), (13, 175680), (3, 175668), (2, 175640),
  (12, 175584), (1, 175544), (11, 175544)]
theorem localLabelsFinal_239_eq : LabToTarget.sectionLabels 175528 Alignment239.lines [] = (176064, localLabelsFinal_239) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_239_eq
end InitECandidate.Proofs.BackendStages
