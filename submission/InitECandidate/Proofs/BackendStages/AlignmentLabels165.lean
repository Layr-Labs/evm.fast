import InitECandidate.Proofs.BackendStages.Alignment165
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_165 : List (Nat × Nat) :=
[(21, 93672), (20, 93660), (9, 93652), (8, 93632), (19, 93576), (18, 93548), (16, 93532), (6, 93524), (5, 93504),
  (15, 93448), (17, 93412), (7, 93388), (4, 93368), (14, 93312), (13, 93280), (3, 93268), (2, 93240), (12, 93184),
  (1, 93148), (11, 93148)]
theorem localLabelsFinal_165_eq : LabToTarget.sectionLabels 93132 Alignment165.lines [] = (93672, localLabelsFinal_165) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_165_eq
end InitECandidate.Proofs.BackendStages
