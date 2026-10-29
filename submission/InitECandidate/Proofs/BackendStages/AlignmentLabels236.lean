import InitECandidate.Proofs.BackendStages.Alignment236
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_236 : List (Nat × Nat) :=
[(16, 173808), (15, 173796), (7, 173788), (6, 173768), (14, 173712), (13, 173668), (5, 173656), (4, 173632),
  (12, 173576), (11, 173536), (3, 173512), (2, 173476), (10, 173420), (1, 173352), (9, 173352)]
theorem localLabelsFinal_236_eq : LabToTarget.sectionLabels 173336 Alignment236.lines [] = (173808, localLabelsFinal_236) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_236_eq
end InitECandidate.Proofs.BackendStages
