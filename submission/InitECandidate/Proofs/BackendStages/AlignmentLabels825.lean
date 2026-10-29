import InitECandidate.Proofs.BackendStages.Alignment825
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_825 : List (Nat × Nat) :=
[(23, 894332), (22, 894280), (21, 894256), (9, 894244), (8, 894216), (20, 894160), (19, 894124), (7, 894112),
  (6, 894084), (18, 894028), (17, 893996), (5, 893992), (4, 893976), (16, 893920), (15, 893856), (14, 893832),
  (3, 893828), (2, 893808), (13, 893752), (12, 893708), (1, 893660), (11, 893660)]
theorem localLabelsFinal_825_eq : LabToTarget.sectionLabels 893644 Alignment825.lines [] = (894332, localLabelsFinal_825) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_825_eq
end InitECandidate.Proofs.BackendStages
