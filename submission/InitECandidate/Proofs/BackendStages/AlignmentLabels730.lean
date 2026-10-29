import InitECandidate.Proofs.BackendStages.Alignment730
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_730 : List (Nat × Nat) :=
[(8, 733464), (7, 733452), (3, 733444), (2, 733424), (6, 733368), (1, 733332), (5, 733332)]
theorem localLabelsFinal_730_eq : LabToTarget.sectionLabels 733316 Alignment730.lines [] = (733464, localLabelsFinal_730) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_730_eq
end InitECandidate.Proofs.BackendStages
