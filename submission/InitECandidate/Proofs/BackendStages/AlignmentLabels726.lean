import InitECandidate.Proofs.BackendStages.Alignment726
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_726 : List (Nat × Nat) :=
[(28, 731828), (27, 731816), (13, 731808), (12, 731788), (26, 731732), (25, 731700), (11, 731688), (10, 731664),
  (24, 731608), (23, 731572), (9, 731552), (8, 731520), (22, 731464), (21, 731428), (7, 731416), (6, 731392),
  (20, 731336), (19, 731300), (5, 731264), (4, 731216), (18, 731160), (17, 731124), (3, 731104), (2, 731072),
  (16, 731016), (1, 730952), (15, 730952)]
theorem localLabelsFinal_726_eq : LabToTarget.sectionLabels 730936 Alignment726.lines [] = (731828, localLabelsFinal_726) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_726_eq
end InitECandidate.Proofs.BackendStages
