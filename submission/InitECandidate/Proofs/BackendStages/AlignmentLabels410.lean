import InitECandidate.Proofs.BackendStages.Alignment410
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_410 : List (Nat × Nat) :=
[(30, 309668), (29, 309656), (13, 309648), (12, 309624), (28, 309568), (27, 309540), (11, 309528), (10, 309504),
  (26, 309448), (25, 309412), (24, 309376), (9, 309364), (8, 309336), (23, 309280), (22, 309216), (21, 309180),
  (7, 309164), (6, 309132), (20, 309076), (19, 309024), (5, 309012), (4, 308988), (18, 308932), (17, 308884),
  (3, 308880), (2, 308860), (16, 308804), (1, 308768), (15, 308768)]
theorem localLabelsFinal_410_eq : LabToTarget.sectionLabels 308752 Alignment410.lines [] = (309668, localLabelsFinal_410) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_410_eq
end InitECandidate.Proofs.BackendStages
