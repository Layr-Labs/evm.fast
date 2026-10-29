import InitECandidate.Proofs.BackendStages.Alignment106
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_106 : List (Nat × Nat) :=
[(9, 11156), (8, 11148), (7, 11136), (6, 11128), (5, 11112), (4, 11104), (3, 11088), (2, 11080), (1, 11060)]
theorem localLabelsFinal_106_eq : LabToTarget.sectionLabels 11060 Alignment106.lines [] = (11156, localLabelsFinal_106) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_106_eq
end InitECandidate.Proofs.BackendStages
