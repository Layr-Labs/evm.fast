import InitECandidate.Proofs.BackendStages.Alignment843
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_843 : List (Nat × Nat) :=
[(39, 913376), (38, 913352), (37, 913324), (17, 913308), (16, 913276), (36, 913220), (35, 913180), (15, 913168),
  (14, 913140), (34, 913084), (33, 913048), (13, 913020), (12, 912976), (32, 912920), (31, 912880), (11, 912868),
  (10, 912844), (30, 912788), (29, 912748), (9, 912740), (8, 912716), (28, 912660), (27, 912620), (7, 912612),
  (6, 912588), (26, 912532), (25, 912492), (24, 912484), (23, 912456), (5, 912444), (4, 912416), (22, 912360),
  (21, 912328), (3, 912324), (2, 912304), (20, 912248), (1, 912196), (19, 912196)]
theorem localLabelsFinal_843_eq : LabToTarget.sectionLabels 912180 Alignment843.lines [] = (913376, localLabelsFinal_843) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_843_eq
end InitECandidate.Proofs.BackendStages
