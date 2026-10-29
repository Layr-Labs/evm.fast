import InitECandidate.Proofs.BackendStages.Alignment198
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_198 : List (Nat × Nat) :=
[(15, 105220), (11, 105200), (14, 105184), (13, 105168), (5, 105132), (4, 105084), (12, 105028), (10, 104908),
  (9, 104892), (3, 104876), (2, 104844), (8, 104788), (1, 104720), (7, 104720)]
theorem localLabelsFinal_198_eq : LabToTarget.sectionLabels 104704 Alignment198.lines [] = (105220, localLabelsFinal_198) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_198_eq
end InitECandidate.Proofs.BackendStages
