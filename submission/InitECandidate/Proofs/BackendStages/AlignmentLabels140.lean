import InitECandidate.Proofs.BackendStages.Alignment140
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_140 : List (Nat × Nat) :=
[(27, 28424), (15, 28396), (26, 28336), (25, 28280), (23, 28280), (9, 28216), (8, 28124), (22, 28068), (24, 28016),
  (21, 27948), (19, 27932), (7, 27904), (6, 27860), (18, 27804), (20, 27736), (17, 27716), (5, 27656), (4, 27580),
  (16, 27524), (14, 27396), (13, 27392), (3, 27340), (2, 27272), (12, 27216), (1, 27092), (11, 27092)]
theorem localLabelsFinal_140_eq : LabToTarget.sectionLabels 27076 Alignment140.lines [] = (28424, localLabelsFinal_140) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_140_eq
end InitECandidate.Proofs.BackendStages
