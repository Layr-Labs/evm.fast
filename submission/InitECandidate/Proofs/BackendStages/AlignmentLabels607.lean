import InitECandidate.Proofs.BackendStages.Alignment607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_607 : List (Nat × Nat) :=
[(32, 481004), (31, 480992), (13, 480984), (12, 480964), (30, 480908), (29, 480876), (11, 480860), (10, 480832),
  (28, 480776), (27, 480736), (9, 480724), (8, 480696), (26, 480640), (25, 480604), (7, 480596), (6, 480576),
  (24, 480520), (23, 480468), (5, 480460), (4, 480440), (22, 480384), (21, 480340), (3, 480336), (2, 480316),
  (20, 480260), (19, 480216), (18, 480188), (16, 480184), (17, 480156), (1, 480128), (15, 480128)]
theorem localLabelsFinal_607_eq : LabToTarget.sectionLabels 480112 Alignment607.lines [] = (481004, localLabelsFinal_607) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_607_eq
end InitECandidate.Proofs.BackendStages
