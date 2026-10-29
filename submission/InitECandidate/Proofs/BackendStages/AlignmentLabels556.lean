import InitECandidate.Proofs.BackendStages.Alignment556
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_556 : List (Nat × Nat) :=
[(20, 415816), (19, 415804), (9, 415796), (8, 415776), (18, 415720), (17, 415692), (7, 415688), (6, 415672),
  (16, 415616), (15, 415588), (5, 415584), (4, 415564), (14, 415508), (13, 415460), (3, 415456), (2, 415440),
  (12, 415384), (1, 415352), (11, 415352)]
theorem localLabelsFinal_556_eq : LabToTarget.sectionLabels 415336 Alignment556.lines [] = (415816, localLabelsFinal_556) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_556_eq
end InitECandidate.Proofs.BackendStages
