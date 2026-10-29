import InitECandidate.Proofs.BackendStages.Alignment827
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_827 : List (Nat × Nat) :=
[(18, 895356), (17, 895304), (16, 895280), (7, 895268), (6, 895240), (15, 895184), (14, 895148), (5, 895140),
  (4, 895116), (13, 895060), (12, 895028), (3, 895024), (2, 895008), (11, 894952), (10, 894908), (1, 894860),
  (9, 894860)]
theorem localLabelsFinal_827_eq : LabToTarget.sectionLabels 894844 Alignment827.lines [] = (895356, localLabelsFinal_827) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_827_eq
end InitECandidate.Proofs.BackendStages
