import InitECandidate.Proofs.BackendStages.Alignment555
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_555 : List (Nat × Nat) :=
[(20, 415336), (19, 415324), (9, 415316), (8, 415296), (18, 415240), (17, 415212), (7, 415208), (6, 415192),
  (16, 415136), (15, 415108), (5, 415104), (4, 415084), (14, 415028), (13, 414976), (3, 414972), (2, 414956),
  (12, 414900), (1, 414868), (11, 414868)]
theorem localLabelsFinal_555_eq : LabToTarget.sectionLabels 414852 Alignment555.lines [] = (415336, localLabelsFinal_555) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_555_eq
end InitECandidate.Proofs.BackendStages
