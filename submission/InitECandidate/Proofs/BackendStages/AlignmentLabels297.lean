import InitECandidate.Proofs.BackendStages.Alignment297
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_297 : List (Nat × Nat) :=
[(8, 233352), (7, 233272), (3, 233252), (2, 233216), (6, 233160), (1, 233112), (5, 233112)]
theorem localLabelsFinal_297_eq : LabToTarget.sectionLabels 233096 Alignment297.lines [] = (233352, localLabelsFinal_297) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_297_eq
end InitECandidate.Proofs.BackendStages
