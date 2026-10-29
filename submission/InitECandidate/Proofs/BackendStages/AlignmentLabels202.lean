import InitECandidate.Proofs.BackendStages.Alignment202
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_202 : List (Nat × Nat) :=
[(14, 108132), (13, 108120), (12, 108064), (5, 108040), (4, 108000), (11, 107944), (10, 107864), (9, 107808),
  (3, 107800), (2, 107776), (8, 107720), (1, 107692), (7, 107692)]
theorem localLabelsFinal_202_eq : LabToTarget.sectionLabels 107676 Alignment202.lines [] = (108132, localLabelsFinal_202) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_202_eq
end InitECandidate.Proofs.BackendStages
