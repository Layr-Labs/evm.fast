import InitECandidate.Proofs.BackendStages.Alignment518
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_518 : List (Nat × Nat) :=
[(32, 384292), (31, 384280), (15, 384272), (14, 384252), (30, 384196), (29, 384168), (13, 384164), (12, 384148),
  (28, 384092), (27, 384064), (11, 384060), (10, 384040), (26, 383984), (25, 383956), (9, 383936), (8, 383900),
  (24, 383844), (23, 383816), (7, 383764), (6, 383700), (22, 383644), (21, 383600), (5, 383596), (4, 383576),
  (20, 383520), (19, 383480), (3, 383476), (2, 383456), (18, 383400), (1, 383372), (17, 383372)]
theorem localLabelsFinal_518_eq : LabToTarget.sectionLabels 383356 Alignment518.lines [] = (384292, localLabelsFinal_518) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_518_eq
end InitECandidate.Proofs.BackendStages
