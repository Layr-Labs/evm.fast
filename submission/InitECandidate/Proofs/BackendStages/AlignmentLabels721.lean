import InitECandidate.Proofs.BackendStages.Alignment721
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_721 : List (Nat × Nat) :=
[(9, 728328), (8, 728324), (7, 728160), (3, 728152), (2, 728128), (6, 728072), (1, 728040), (5, 728040)]
theorem localLabelsFinal_721_eq : LabToTarget.sectionLabels 728024 Alignment721.lines [] = (728328, localLabelsFinal_721) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_721_eq
end InitECandidate.Proofs.BackendStages
