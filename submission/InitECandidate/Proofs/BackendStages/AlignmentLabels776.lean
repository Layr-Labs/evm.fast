import InitECandidate.Proofs.BackendStages.Alignment776
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_776 : List (Nat × Nat) :=
[(28, 790040), (27, 790028), (13, 790020), (12, 790000), (26, 789944), (25, 789912), (11, 789904), (10, 789884),
  (24, 789828), (23, 789792), (9, 789772), (8, 789740), (22, 789684), (21, 789644), (7, 789632), (6, 789608),
  (20, 789552), (19, 789516), (5, 789508), (4, 789484), (18, 789428), (17, 789392), (3, 789388), (2, 789368),
  (16, 789312), (1, 789272), (15, 789272)]
theorem localLabelsFinal_776_eq : LabToTarget.sectionLabels 789256 Alignment776.lines [] = (790040, localLabelsFinal_776) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_776_eq
end InitECandidate.Proofs.BackendStages
