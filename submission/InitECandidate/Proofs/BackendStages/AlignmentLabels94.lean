import InitECandidate.Proofs.BackendStages.Alignment94
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_94 : List (Nat × Nat) :=
[(16, 10128), (12, 10120), (15, 10112), (14, 10108), (13, 10088), (11, 10048), (10, 10032), (9, 10008), (7, 10008),
  (3, 9992), (2, 9964), (6, 9908), (8, 9868), (1, 9852), (5, 9852)]
theorem localLabelsFinal_94_eq : LabToTarget.sectionLabels 9836 Alignment94.lines [] = (10128, localLabelsFinal_94) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_94_eq
end InitECandidate.Proofs.BackendStages
