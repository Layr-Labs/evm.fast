import InitECandidate.Proofs.BackendStages.Alignment212
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_212 : List (Nat × Nat) :=
[(18, 123860), (17, 123848), (15, 123848), (7, 123840), (6, 123816), (14, 123760), (16, 123732), (13, 123716),
  (5, 123692), (4, 123652), (12, 123596), (11, 123564), (3, 123496), (2, 123412), (10, 123356), (1, 123280),
  (9, 123280)]
theorem localLabelsFinal_212_eq : LabToTarget.sectionLabels 123264 Alignment212.lines [] = (123860, localLabelsFinal_212) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_212_eq
end InitECandidate.Proofs.BackendStages
