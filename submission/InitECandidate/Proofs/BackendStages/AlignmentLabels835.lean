import InitECandidate.Proofs.BackendStages.Alignment835
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_835 : List (Nat × Nat) :=
[(22, 902768), (21, 902756), (20, 902752), (19, 902732), (18, 902728), (17, 902716), (16, 902716), (15, 902692),
  (14, 902688), (13, 902676), (5, 902660), (4, 902628), (12, 902572), (11, 902532), (10, 902516), (9, 902488),
  (3, 902460), (2, 902416), (8, 902360), (1, 902308), (7, 902308)]
theorem localLabelsFinal_835_eq : LabToTarget.sectionLabels 902292 Alignment835.lines [] = (902768, localLabelsFinal_835) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_835_eq
end InitECandidate.Proofs.BackendStages
