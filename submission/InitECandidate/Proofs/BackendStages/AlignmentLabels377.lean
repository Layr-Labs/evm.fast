import InitECandidate.Proofs.BackendStages.Alignment377
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_377 : List (Nat × Nat) :=
[(30, 287968), (29, 287956), (28, 287932), (9, 287920), (8, 287892), (27, 287836), (26, 287804), (7, 287800),
  (6, 287780), (25, 287724), (24, 287692), (5, 287688), (4, 287668), (23, 287612), (22, 287560), (20, 287560),
  (19, 287536), (18, 287508), (17, 287504), (16, 287488), (15, 287484), (21, 287468), (14, 287456), (3, 287432),
  (2, 287392), (13, 287336), (12, 287272), (1, 287240), (11, 287240)]
theorem localLabelsFinal_377_eq : LabToTarget.sectionLabels 287224 Alignment377.lines [] = (287968, localLabelsFinal_377) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_377_eq
end InitECandidate.Proofs.BackendStages
