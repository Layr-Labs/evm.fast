import InitECandidate.Proofs.BackendStages.Alignment394
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_394 : List (Nat × Nat) :=
[(8, 301668), (7, 301656), (3, 301648), (2, 301624), (6, 301568), (1, 301504), (5, 301504)]
theorem localLabelsFinal_394_eq : LabToTarget.sectionLabels 301488 Alignment394.lines [] = (301668, localLabelsFinal_394) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_394_eq
end InitECandidate.Proofs.BackendStages
