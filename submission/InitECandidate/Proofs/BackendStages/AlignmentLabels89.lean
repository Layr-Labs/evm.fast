import InitECandidate.Proofs.BackendStages.Alignment89
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_89 : List (Nat × Nat) :=
[(17, 9372), (16, 9360), (7, 9352), (6, 9332), (15, 9276), (14, 9248), (5, 9236), (4, 9212), (13, 9156), (12, 9108),
  (11, 9092), (3, 9080), (2, 9052), (10, 8996), (1, 8944), (9, 8944)]
theorem localLabelsFinal_89_eq : LabToTarget.sectionLabels 8928 Alignment89.lines [] = (9372, localLabelsFinal_89) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_89_eq
end InitECandidate.Proofs.BackendStages
