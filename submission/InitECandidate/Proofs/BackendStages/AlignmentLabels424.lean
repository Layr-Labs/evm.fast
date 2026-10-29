import InitECandidate.Proofs.BackendStages.Alignment424
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_424 : List (Nat × Nat) :=
[(20, 316048), (19, 316036), (9, 316028), (8, 316008), (18, 315952), (17, 315892), (7, 315884), (6, 315860),
  (16, 315804), (15, 315776), (5, 315772), (4, 315752), (14, 315696), (13, 315664), (3, 315656), (2, 315636),
  (12, 315580), (1, 315548), (11, 315548)]
theorem localLabelsFinal_424_eq : LabToTarget.sectionLabels 315532 Alignment424.lines [] = (316048, localLabelsFinal_424) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_424_eq
end InitECandidate.Proofs.BackendStages
