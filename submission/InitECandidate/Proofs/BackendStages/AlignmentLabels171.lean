import InitECandidate.Proofs.BackendStages.Alignment171
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_171 : List (Nat × Nat) :=
[(24, 96020), (23, 96008), (21, 96008), (5, 96000), (4, 95980), (20, 95924), (22, 95896), (19, 95876), (18, 95872),
  (17, 95860), (16, 95856), (15, 95840), (13, 95840), (3, 95828), (2, 95804), (12, 95748), (14, 95708), (11, 95688),
  (10, 95684), (9, 95664), (8, 95660), (1, 95644), (7, 95644)]
theorem localLabelsFinal_171_eq : LabToTarget.sectionLabels 95628 Alignment171.lines [] = (96020, localLabelsFinal_171) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_171_eq
end InitECandidate.Proofs.BackendStages
